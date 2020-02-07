require 'rails_helper'

RSpec.describe "contestants index page", type: :feature do
  context "as a visitor" do

    before :each do
      @contestant_1 = Contestant.create(name: "Rufus Wainwright", age: 60, hometown: "Denver", years_of_experience: 10)
      @contestant_2 = Contestant.create(name: "Madonna", age: 20, hometown: "Boston", years_of_experience: 90)

      @recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
      @furniture_challenge = Challenge.create(theme: "Apartment Furnishings", project_budget: 1000)

      @project_1 = @recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")
      @project_2 = @recycled_material_challenge.projects.create(name: "Boardfit", material: "Cardboard Boxes")

      @project_3 = @furniture_challenge.projects.create(name: "Upholstery Tuxedo", material: "Couch")
      @project_4 = @furniture_challenge.projects.create(name: "Litfit", material: "Lamp")

      @contestant_1.projects << @project_1
      @contestant_1.projects << @project_2
      @contestant_2.projects << @project_3
      @contestant_2.projects << @project_4

    end

    it "can see all contestants names" do
      visit "/contestants"

      within "#contestant-#{@contestant_1.id}" do
        expect(page).to have_content(@contestant_1.name)
        expect(page).to have_content(@project_1.name)
        expect(page).to have_content(@project_2.name)
      end

      within "#contestant-#{@contestant_2.id}" do
        expect(page).to have_content(@contestant_2.name)
        expect(page).to have_content(@project_3.name)
        expect(page).to have_content(@project_4.name)
      end
    end
  end
end
