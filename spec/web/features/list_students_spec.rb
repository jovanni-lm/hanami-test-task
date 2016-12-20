require 'features_helper'

describe 'List students' do
  let(:repository) { StudentRepository.new }

  before do
    repository.clear

    repository.create(first_name: 'some', last_name: 'test', email: 'test@test.bu')
    repository.create(first_name: 'testing', last_name: 'student', email: 'student@test.bu')
  end

  it 'displays each student on the page' do
    visit '/students'

    within '#students' do
      assert page.has_css?('.student', count: 2), 'Expected to find 2 students'
    end
  end
end
