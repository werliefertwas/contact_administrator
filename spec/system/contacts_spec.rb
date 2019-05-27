require 'rails_helper'

RSpec.describe 'contacts' do
  describe 'creating a contact' do
    it 'allows to create a contact' do
      visit new_contact_path

      expect(page).to have_content 'New Contact'

      fill_in 'Body', with: 'Lorem Ipsum'
      fill_in 'Last name', with: 'Bond'
      fill_in 'Phone', with: '+49401234567'
      click_on 'Create Contact'

      expect(page).to have_content 'Contact was successfully created'
    end

    it 'shows a contact in the admin list' do
      visit new_contact_path

      expect(page).to have_content 'New Contact'

      fill_in 'Body', with: 'Lorem Ipsum'
      fill_in 'Last name', with: 'Bond'
      fill_in 'Phone', with: '+49401234567'
      click_on 'Create Contact'

      visit admin_contacts_list_path

      expect(page).to have_content 'List of confirmed contacts'
      expect(page).to have_content 'Bond'
      expect(page).to have_content '+49401234567'
    end
  end
end
