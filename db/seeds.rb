# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
contestant_1 = Contestant.create(name: "Rufus Wainwright", age: 60, hometown: "Denver", years_of_experience: 10)
contestant_2 = Contestant.create(name: "Madonna", age: 20, hometown: "Boston", years_of_experience: 90)


recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
furniture_challenge = Challenge.create(theme: "Apartment Furnishings", project_budget: 1000)

recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")
recycled_material_challenge.projects.create(name: "Boardfit", material: "Cardboard Boxes")

furniture_challenge.projects.create(name: "Upholstery Tuxedo", material: "Couch")
furniture_challenge.projects.create(name: "Litfit", material: "Lamp")
