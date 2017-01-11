require 'spec_helper'
require_relative '../../../../apps/web/views/students/edit'

describe Web::Views::Students::Edit do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/students/edit.html.haml') }
  let(:view)      { Web::Views::Students::Edit.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
