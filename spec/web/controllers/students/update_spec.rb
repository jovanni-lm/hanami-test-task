require 'spec_helper'
require_relative '../../../../apps/web/controllers/students/update'

describe Web::Controllers::Students::Update do
  let(:action) { Web::Controllers::Students::Update.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
