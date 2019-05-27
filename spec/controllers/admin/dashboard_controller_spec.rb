require 'rails_helper'

RSpec.describe Admin::DashboardController do
  describe 'GET index' do
    it 'is successful' do
      get :contacts

      expect(response).to be_successful
    end
  end
end