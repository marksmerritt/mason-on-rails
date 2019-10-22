require "rails_helper"

describe "navigation" do 
  #--------------------- Index ---------------------#
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

  #--------------------- New ---------------------#
  describe "new" do 
    it "can be created" do 
      visit new_course_path
      fill_in "title-field", with: "Some Title"

      expect{ click_button "create-new-course-btn" }.to change{ Course.count }.by(1)
    end
  end
end