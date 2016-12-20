require 'spec_helper'
require_relative '../../../../apps/web/controllers/students/index'

describe Web::Controllers::Students::Index do
  let(:action) { Web::Controllers::Students::Index.new }
  let(:params) { Hash[] }
  let(:repository) { StudentRepository.new }

  before do
    repository.clear

    @student = repository.create(first_name: 'John', last_name: 'Doe', email: 'test@test.ts')
  end

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end

  it 'exposes all students' do
    action.call(params)
    action.exposures[:students].must_equal [@student]
  end
end
