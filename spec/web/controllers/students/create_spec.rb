require 'spec_helper'
require_relative '../../../../apps/web/controllers/students/create'

describe Web::Controllers::Students::Create do
  let(:action) { Web::Controllers::Students::Create.new }

  before do
    StudentRepository.new.clear
  end

  describe 'with valid params' do
    let(:params) { Hash[student: { first_name: 'John', last_name: 'Doe', email: 'test@test.ts' }] }

    it 'create a new student' do
      action.call(params)

      action.student.id.wont_be_nil
      action.student.first_name.must_equal params[:student][:first_name]
    end

    it 'redirects the user to the students listing' do
      responce = action.call(params)

      responce[0].must_equal 302
      responce[1]['Location'].must_equal '/students'
    end
  end

  describe 'with invalid params' do
    let(:params) { Hash[student: {}] }

    it 're-renders the studentss#new view' do
      response = action.call(params)
      response[0].must_equal 422
    end

    it 'sets errors attribute accordingly' do
      response = action.call(params)
      response[0].must_equal 422

      action.params.errors[:student][:first_name].must_equal ['is missing']
      action.params.errors[:student][:last_name].must_equal ['is missing']
      action.params.errors[:student][:email].must_equal ['is missing']
    end
  end
end
