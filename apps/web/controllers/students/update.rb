module Web::Controllers::Students
  class Update
    include Web::Action

    def call(params)
      StudentRepository.new.update(params[:id], params[:student])
    end
  end
end
