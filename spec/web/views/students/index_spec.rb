require 'spec_helper'
require_relative '../../../../apps/web/views/students/index'

describe Web::Views::Students::Index do
  let(:exposures) { Hash[students: []] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/students/index.html.haml') }
  let(:view)      { Web::Views::Students::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #students' do
    view.students.must_equal exposures.fetch(:students)
  end

  describe 'when there are no students' do
    it 'shows a placeholder message' do
      rendered.must_include('<p>There are no students yet.</p>')
    end
  end

  describe 'when there are students' do
    let(:student1) { Student.new(first_name: 'Some', last_name: 'Test', email: 'test@test.ts') }
    let(:student2) { Student.new(first_name: 'Some2', last_name: 'Test2', email: 'test2@test.ts') }
    let(:exposures) { Hash[students: [student1, student2]] }

    it 'list them all' do
      rendered.scan(/class='student'/).count.must_equal 2
    end

    it 'hides the placeholder message' do
      rendered.wont_include('<p>There are no students yet.</p>')
    end
  end
end
