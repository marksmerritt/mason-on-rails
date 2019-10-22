require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe "creation" do 
    it "can be created" do 
      expect{ FactoryBot.create(:admin) }.to change{ Admin.count }.by(1)
    end
  end
end
