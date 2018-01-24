module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:sys_admin]
      sign_in FactoryBot.create(:sys_admin) # Using factory girl as an example
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      client = FactoryBot.create(:user)
      sign_in user
    end
  end
end
