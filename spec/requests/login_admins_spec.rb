require 'spec_helper'

describe "Login_admins" do
  it "allows you to log in" do
    user = Factory(:user)
    visit new_user_session_path
    
  end
end
