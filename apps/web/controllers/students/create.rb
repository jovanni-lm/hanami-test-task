module Web::Controllers::Students
  class Create
    include Web::Action

    expose :student

    params do
      required(:student).schema do
        required(:first_name).filled(:str?)
        required(:last_name).filled(:str?)
        required(:email).filled(:str?)
      end
    end

    def call(params)
      if params.valid?
        @student = StudentRepository.new.create(params[:student])

        redirect_to routes.students_path
      else
        self.status = 422
      end
    end
  end
end
