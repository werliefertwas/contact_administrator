require 'rails_helper'

RSpec.describe 'dashboard' do
  let!(:confirmed) { create(:contact, :confirmed, last_name: 'Bond') }
  let!(:declined) { create(:contact, :declined, last_name: 'Dr. Evil') }

  it 'shows a contact in the admin list' do
    visit admin_contacts_list_path

    expect(page).to have_content 'List of confirmed contacts'
    expect(page).to have_content confirmed.last_name
    expect(page).to have_content declined.last_name
  end
end
