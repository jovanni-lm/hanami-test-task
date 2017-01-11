require_relative './set_student'

module Web::Controllers::Students
  class Show
    include Web::Action
    include SetStudent

    expose :student

    def call(_params)
    end
  end
end
