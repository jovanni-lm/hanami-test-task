require_relative './new'

module Web::Views::Students
  class Create < New
    include Hanami::Helpers

    def form
      Form.new(:student. routes.students_path)
    end

    def submit_label
      'Create'
    end
  end
end
