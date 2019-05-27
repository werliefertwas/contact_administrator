require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @confirmed = contacts(:confirmed)
  end

  test "creating a Contact" do
    visit new_contact_url

    assert_text 'New Contact'

    fill_in "Body", with: @confirmed.body
    fill_in "Last name", with: @confirmed.last_name
    fill_in "Phone", with: @confirmed.phone
    click_on "Create Contact"

    assert_text "Contact was successfully created"
  end
end
