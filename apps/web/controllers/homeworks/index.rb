module Web::Controllers::Homeworks
  class Index
    include Web::Action

    expose :homeworks

    def call(_params)
      @homeworks = HomeworkRepository.new.all
    end
  end
end
