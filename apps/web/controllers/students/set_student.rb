module Web::Controllers::Students
  module SetStudent
    def self.included(action)
      action.class_eval do
        before :set_students
      end
    end

    private

    def set_students
      @student = StudentRepository.new.find(params[:id])
      halt 404 if @student.nil?
    end
  end
end
