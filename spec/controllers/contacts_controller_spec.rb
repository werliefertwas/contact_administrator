require 'rails_helper'

RSpec.describe ContactsController do
  describe 'GET new' do
    it 'is successful' do
      expect(get :new).to be_successful
    end
  end

  describe 'GET show' do
    let(:contact) { Contact.create }

    it 'is successful' do
      get :show, params: { id: contact.id }
      expect(response).to be_successful
    end
  end

  describe 'POST create' do
    it 'is successful' do
      post :create, params: { contact: { last_name: 'Bond', phone: '+44 007 1234567', body: "Lorem ipsum" } }
      expect(response).to have_http_status(302)
    end
  end
end
