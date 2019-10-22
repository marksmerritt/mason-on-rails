require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "creation" do 
    it "can be created" do 
      expect{ FactoryBot.create(:admin) }.to change{ Admin.count }.by(1)
    end
  end

  describe "validation" do 
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
  end
end
