require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup 
    @user = User.new(name: "Example User", email: " user@example.com")
  end
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example, user_at_foo.org,  user.name@example. foo@bar_baz.com, foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end 
  test "email validation should accept valid addresses" do 
    valid_addresses = %w[user@example.com, user.last@foo.au, user@example.edu.eg, user-app@example.com.br]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  # test "the truth" do
  #   assert true
  # end
end
