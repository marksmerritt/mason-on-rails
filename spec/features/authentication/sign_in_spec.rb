require "rails_helper"

describe "navigation" do 
  describe "sessions#new" do 
    before do 
      @admin = FactoryBot.create(:admin)
    end

    it "allows an Admin to sign-in" do 
      visit new_admin_session_path
      fill_in "email-field", with: @admin.email
      fill_in "password-field", with: "helloworld"
      click_button "signin-btn" 
      
      expect(current_path).to eq(root_path)
    end
  end
end