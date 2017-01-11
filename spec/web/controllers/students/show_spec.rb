require 'spec_helper'
require_relative '../../../../apps/web/controllers/students/show'

describe Web::Controllers::Students::Show do
  let(:action) { Web::Controllers::Students::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
