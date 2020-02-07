# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contestant.destroy_all
Project.destroy_all
Challenge.destroy_all

contestant_1 = Contestant.create(name: "Rufus Wainwright", age: 60, hometown: "Denver", years_of_experience: 10)
contestant_2 = Contestant.create(name: "Madonna", age: 20, hometown: "Boston", years_of_experience: 90)

recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
furniture_challenge = Challenge.create(theme: "Apartment Furnishings", project_budget: 1000)

project_1 = recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")
project_2 = recycled_material_challenge.projects.create(name: "Boardfit", material: "Cardboard Boxes")

project_3 = furniture_challenge.projects.create(name: "Upholstery Tuxedo", material: "Couch")
project_4 = furniture_challenge.projects.create(name: "Litfit", material: "Lamp")

contestant_1.projects << project_1
contestant_1.projects << project_2
contestant_2.projects << project_3
contestant_2.projects << project_4
