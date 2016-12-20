require 'spec_helper'

describe Student do
  it 'can be initialised with attributes' do
    student = Student.new(first_name: 'John', last_name: 'Doe', email: 'test@test.bu')

    student.first_name.must_equal 'John'
  end
end
