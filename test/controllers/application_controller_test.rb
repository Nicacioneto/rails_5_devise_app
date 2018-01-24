class ApplicationControllerTest < ActionController::TestCase
# For Devise >= 4.1.1
include Devise::Test::ControllerHelpers
# Use the following instead if you are on Devise <= 4.1.0
# include Devise::TestHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryBot.create(:user, email:"robson@gmail.com")
  end

  test "should have a current_user" do
   # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
    assert_not_equal(subject.current_user,nil)
  end

end
