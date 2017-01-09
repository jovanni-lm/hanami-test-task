require 'spec_helper'
require_relative '../../../../apps/web/views/students/create'

describe Web::Views::Students::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/students/create.html.haml') }
  let(:view)      { Web::Views::Students::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
