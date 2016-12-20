require_relative './new'

module Web::Views::Students
  class Create < New
    include Web::View
    template 'students/new'
  end
end
