require "rails_helper"

describe "navigation" do 
  describe "index" do 
    before do 
      @course1 = FactoryBot.create(:course)
      @course2 = FactoryBot.create(:second_course)
    end

    it "displays a list of courses" do 
      visit courses_path
      
      expect(page).to have_content(/#{@course1.title}|#{@course2.title}/)
    end
  end
end