
bears = Team.find_by(name: "Chicago Bears")
cowboys = Team.find_by(name: "Dallas Cowboys")
niners = Team.find_by(name: "San Francisco 49ers")
patriots = Team.find_by(name: "New England Patriots")

# Bears bars
bar1 = Bar.create(name: "The Wreck Room", address: "2400 Bryant St", city: "San Francisco")
BarTeam.create(bar: bar1, team: bears)

bar2 = Bar.create(name: "Mad River Bar", address: "3rd Ave", city: "New York")
BarTeam.create(bar: bar2, team: bears)

bar3 = Bar.create(name: "Kirkwood Bar", address: "2934 N Sheffield Ave", city: "Chicago")
BarTeam.create(bar: bar3, team: bears)

# Cowboys bars
bar4 = Bar.create(name: "Blondies Sports", address: "212 W 79th St", city: "New York")
BarTeam.create(bar: bar4, team: cowboys)

bar5 = Bar.create(name: "The Star", address: "1 Cowboys Way", city: "Dallas")
BarTeam.create(bar: bar5, team: cowboys)

# 49ers bars
bar6 = Bar.create(name: "Kezar Pub", address: "770 Stanyan St", city: "San Francisco")
BarTeam.create(bar: bar6, team: niners)

bar7 = Bar.create(name: "Giordanos", address: "303 2nd St", city: "San Francisco")
BarTeam.create(bar: bar7, team: niners)

# Patriots bars
bar8 = Bar.create(name: "The Harp", address: "85 Causeway St", city: "Boston")
BarTeam.create(bar: bar8, team: patriots)

bar9 = Bar.create(name: "Anthem Kitchen", address: "101 S Broadway", city: "Los Angeles")
BarTeam.create(bar: bar9, team: patriots)

puts "Created #{Bar.count} bars"
puts "Created #{BarTeam.count} bar-team associations"