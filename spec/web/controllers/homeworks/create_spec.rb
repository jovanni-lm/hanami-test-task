require 'spec_helper'
require_relative '../../../../apps/web/controllers/homeworks/create'

describe Web::Controllers::Homeworks::Create do
  let(:action) { Web::Controllers::Homeworks::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
