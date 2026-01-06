# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

bears = Team.create(name: "Chicago Bears", sport:"NFL")
niners = Team.create(name: "San Francisco 49ers", sport:"NFL")

bar1 = Bar.create(name: "The Wreck Room", address: "2400 Bryant St", city: "San Francisco")
bar2 = Bar.create(name: "Kezar Pub", address: "770 Stanyan St", city: "San Francisco")

BarTeam.create(bar: bar1, team: bears)
BarTeam.create(bar: bar2, team: niners)