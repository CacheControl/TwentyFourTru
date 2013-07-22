module TwentyFourTru
  class Study

    class << self
      def all(options={})
        Client.get("/studies")
      end

      def find(study_id)
        Client.get("/studies/#{study_id}")
      end
    end

    attr_accessor :study_id

  end
end