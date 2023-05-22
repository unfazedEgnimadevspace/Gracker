require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get pricing path" do
    get contact_path 
    assert_response :success
    assert_select "title", full_title("Contact")
  end

  test "Sucessfully created contact" do 
    get contact_path
    assert_response :success
    assert_difference "Contact.count", 1 do
      post contacts_path, params: { contact: { email: "akalugidaniel@gmail.com", subject: "Can i get diet plans for arms muscle", message: "can i get a meal plan for arm muscle building"}}
    end
    assert_redirected_to root_path
    assert_not flash.empty?
  end

  test "Failed contact creation process" do
    get contact_path
    assert_response :success
    assert_no_difference 'Contact.count' do 
      post contacts_path, params: { contact: { email: "akalaidg", subject: "", message: ""}}
    end
    assert_template 'website/contacts/new'
  end
end
