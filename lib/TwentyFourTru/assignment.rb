module TwentyFourTru
  class Assignment

    class << self
      def all(study_id, options={})
        Client.get("/studies/#{study_id}/assignments")
      end

      def find(assignment_id)
        Client.get("/assignments/#{assignment_id}")
      end

      def create(study_id, options)
        Client.post("/studies/#{study_id}/assignments", options)
      end
    end

    attr_accessor :study_id, :assignment_id
  end
end