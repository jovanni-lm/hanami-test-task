module Web::Controllers::Students
  class Edit
    include Web::Action
    expose :student

    def call(params)
      @student = StudentRepository.new.find(params[:id])
    end
  end
end
