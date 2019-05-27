require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:confirmed)
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { body: @contact.body, last_name: @contact.last_name, phone: @contact.phone, status: @contact.status } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end
end
