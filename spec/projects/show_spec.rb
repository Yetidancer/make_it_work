require 'rails_helper'

RSpec.describe "project id page", type: :feature do
  context "as a visitor" do
    before :each do
      @recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
      @furniture_challenge = Challenge.create(theme: "Apartment Furnishings", project_budget: 1000)

      @project_1 = @recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")
      @project_2 = @recycled_material_challenge.projects.create(name: "Boardfit", material: "Cardboard Boxes")

      @project_3 = @furniture_challenge.projects.create(name: "Upholstery Tuxedo", material: "Couch")
      @project_4 = @furniture_challenge.projects.create(name: "Litfit", material: "Lamp")
    end

    it "can see project attributes" do

      visit "/projects/#{@project_1.id}"

      expect(page).to have_content(@project_1.name)
      expect(page).to have_content(@project_1.material)
      expect(page).to have_content(@recycled_material_challenge.theme)
    end
  end
end
