require_relative 'new'

module Web::Controllers::Students
  class Update < New
    include Web::Action

    def call(params)
      if params.valid?
        StudentRepository.new.update(params[:id], params[:student])

        redirect_to routes.students_path
      else
        self.status = 422
      end
    end
  end
end
