require 'spec_helper'
require_relative '../../../../apps/web/controllers/students/edit'

describe Web::Controllers::Students::Edit do
  let(:action) { Web::Controllers::Students::Edit.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
