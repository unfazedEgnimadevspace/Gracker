require "test_helper"

class ContactTest < ActiveSupport::TestCase
  setup do
    @contact = Contact.new(email: "no-reply@gmail.com", subject: "I want a hard training feature", message: "lorem ipsum dolor violer")
  end

  test 'email should be present' do
    @contact.email = ""
    assert_not @contact.valid?
  end
  test "email regex should validate valid emails" do
    valid_email_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
      first.last@foo.jp alice+bob@baz.cn]
      valid_email_addresses.each do |email_address|
        @contact.email = email_address
        assert @contact.valid?, "#{email_address.inspect} is valid"
      end
  end
  test "email regex should invalidate invalid emails" do
    invalid_email_addresses = %w[user@example,com user_at_foo.org user.name@example.
    foo@bar_baz.com foo@bar+baz.com]
    invalid_email_addresses.each do |invalid_email_address|
      @contact.email = invalid_email_address
      assert_not @contact.valid?, "#{invalid_email_address.inspect} is invalid"
    end
  end

  test "subject should not be empty" do
    @contact.subject = ""
    assert_not @contact.valid?
  end
  test "subject characters should not be more than 60" do
    @contact.subject = 'a' * 61
    assert_not @contact.valid?
  end
  test "message should not be empty" do
    @contact.message = ""
    assert_not @contact.valid?
  end
  test "message characters should not be more than 60" do
    @contact.message = 'a' * 141
    assert_not @contact.valid?
  end
end
