require 'spec_helper'
require_relative '../../../../apps/web/controllers/homeworks/new'

describe Web::Controllers::Homeworks::New do
  let(:action) { Web::Controllers::Homeworks::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
