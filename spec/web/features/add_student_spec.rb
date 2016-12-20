require 'features_helper'

describe 'Add a student' do
  it 'displays list of errors when params contains errors' do
    visit '/students/new'

    within 'form#student-form' do
      click_button 'Create'
    end

    current_path.must_equal('/students')

    assert page.has_content?('There was a problem with your submission')
    assert page.has_content?('First Name must be filled')
    assert page.has_content?('Last Name must be filled')
    assert page.has_content?('Email must be filled')
  end
end
