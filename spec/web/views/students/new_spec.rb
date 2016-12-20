require 'spec_helper'
require_relative '../../../../apps/web/views/students/new'

class NewStudentParams < Hanami::Action::Params
  params do
    required(:student).schema do
      required(:first_name).filled(:str?)
      required(:last_name).filled(:str?)
      required(:email).filled(:str?)
    end
  end
end

describe Web::Views::Students::New do
  let(:params)    { NewStudentParams.new(student: {}) }
  let(:exposures) { Hash[params: params] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/students/new.html.haml') }
  let(:view)      { Web::Views::Students::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'displays list of errors when params contains errors' do
    params.valid?

    rendered.must_include('There was a problem with your submission')
    rendered.must_include('First Name is missing')
    rendered.must_include('Last Name is missing')
    rendered.must_include('Email is missing')
  end
end
