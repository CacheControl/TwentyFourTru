module TwentyFourTru
  class Response

    class << self
      def all(assignment_id, options={})
        Client.get("/assignments/#{assignment_id}/responses")
      end

      def find(response_id)
        Client.get("/responses/#{response_id}")
      end

      def create(assignment_id, options)
        Client.post("/assignments/#{assignment_id}/responses", options)
      end
    end

    attr_accessor :assignment_id, :response_id
  end
end