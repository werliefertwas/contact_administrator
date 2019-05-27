require "application_system_test_case"

class DashboardTest < ApplicationSystemTestCase
  setup do
    @confirmed = contacts(:confirmed)
    @declined = contacts(:declined)
  end

  test 'shows a contact in the admin list' do
    visit admin_contacts_list_path

    assert_text 'List of confirmed contacts'
    assert_text @confirmed.last_name
    assert_text @declined.last_name
  end
end
