require 'spec_helper'
require_relative '../../../../apps/web/controllers/students/new'

describe Web::Controllers::Students::New do
  let(:action) { Web::Controllers::Students::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
