module TwentyFourTru

  class Client

    class NoToken < StandardError; end

    class << self
      attr_writer :use_ssl, :token, :api_host

      def use_ssl
        @use_ssl || false
      end

      # this is your connection for the entire module
      def connection(options={})
        raise NoToken if @token.to_s.empty?

        @connections ||= {}

        cached_connection? && !protocol_changed? ? cached_connection : new_connection
      end

      def get(url)
        JSON.parse(RestClient.get "#{use_ssl ? api_ssl_url : api_url}" + url, :params => {:auth_token => @token}, :content_type => :json)
      end

      def post(url, options)
        options.merge!({:auth_token => @token})
        JSON.parse(RestClient.post "#{use_ssl ? api_ssl_url : api_url}" + url, options, :content_type => :json)
      end

      def clear_connections
        @connections = nil
      end

      def api_host
        @api_host ||= "www.24tru.com"
      end

      def api_ssl_url
        "https://#{api_host}#{api_path}"
      end

      def api_url
        "http://#{api_host}#{api_path}"
      end

      protected

        def protocol
          use_ssl ? 'https' : 'http'
        end

        def cached_connection?
          !@connections[@token].nil?
        end

        def cached_connection
          @connections[@token]
        end

        def new_connection
          @connections[@token] = RestClient::Resource.new("#{use_ssl ? api_ssl_url : api_url}", :params => {auth_token: @token}, :headers => {'X-TrackerToken' => @token, 'Content-Type' => 'application/xml'})
        end

        def protocol_changed?
          cached_connection? ? (cached_connection_protocol != protocol) : false
        end

        def cached_connection_protocol
          cached_connection.url.match(/^(.*):\/\//).captures.first
        end

        def api_path
          '/r/api/v2'
        end
    end

  end
end