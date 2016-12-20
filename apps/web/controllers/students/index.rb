module Web::Controllers::Students
  class Index
    include Web::Action

    expose :students

    def call(_params)
      @students = StudentRepository.new.all
    end
  end
end
