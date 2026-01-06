namespace :data do
  desc "Populate NFL Teams Table"
  task populate_teams: :environment do
    teams = [
      { name: "Arizona Cardinals", city: "Arizona", abbreviation: "ARI", primary_color: "#97233F", secondary_color: "#000000" },
      { name: "Atlanta Falcons", city: "Atlanta", abbreviation: "ATL", primary_color: "#A71930", secondary_color: "#000000" },
      { name: "Baltimore Ravens", city: "Baltimore", abbreviation: "BAL", primary_color: "#241773", secondary_color: "#000000" },
      { name: "Buffalo Bills", city: "Buffalo", abbreviation: "BUF", primary_color: "#00338D", secondary_color: "#C60C30" },
      { name: "Carolina Panthers", city: "Carolina", abbreviation: "CAR", primary_color: "#0085CA", secondary_color: "#101820" },
      { name: "Chicago Bears", city: "Chicago", abbreviation: "CHI", primary_color: "#0B162A", secondary_color: "#C83803" },
      { name: "Cincinnati Bengals", city: "Cincinnati", abbreviation: "CIN", primary_color: "#FB4F14", secondary_color: "#000000" },
      { name: "Cleveland Browns", city: "Cleveland", abbreviation: "CLE", primary_color: "#311D00", secondary_color: "#FF3C00" },
      { name: "Dallas Cowboys", city: "Dallas", abbreviation: "DAL", primary_color: "#041E42", secondary_color: "#869397" },
      { name: "Denver Broncos", city: "Denver", abbreviation: "DEN", primary_color: "#FB4F14", secondary_color: "#002244" },
      { name: "Detroit Lions", city: "Detroit", abbreviation: "DET", primary_color: "#0076B6", secondary_color: "#B0B7BC" },
      { name: "Green Bay Packers", city: "Green Bay", abbreviation: "GB", primary_color: "#203731", secondary_color: "#FFB612" },
      { name: "Houston Texans", city: "Houston", abbreviation: "HOU", primary_color: "#03202F", secondary_color: "#A71930" },
      { name: "Indianapolis Colts", city: "Indianapolis", abbreviation: "IND", primary_color: "#002C5F", secondary_color: "#A2AAAD" },
      { name: "Jacksonville Jaguars", city: "Jacksonville", abbreviation: "JAX", primary_color: "#006778", secondary_color: "#D7A22A" },
      { name: "Kansas City Chiefs", city: "Kansas City", abbreviation: "KC", primary_color: "#E31837", secondary_color: "#FFB81C" },
      { name: "Las Vegas Raiders", city: "Las Vegas", abbreviation: "LV", primary_color: "#000000", secondary_color: "#A5ACAF" },
      { name: "Los Angeles Chargers", city: "Los Angeles", abbreviation: "LAC", primary_color: "#0080C6", secondary_color: "#FFC20E" },
      { name: "Los Angeles Rams", city: "Los Angeles", abbreviation: "LAR", primary_color: "#003594", secondary_color: "#FFA300" },
      { name: "Miami Dolphins", city: "Miami", abbreviation: "MIA", primary_color: "#008E97", secondary_color: "#FC4C02" },
      { name: "Minnesota Vikings", city: "Minnesota", abbreviation: "MIN", primary_color: "#4F2683", secondary_color: "#FFC62F" },
      { name: "New England Patriots", city: "New England", abbreviation: "NE", primary_color: "#002244", secondary_color: "#C60C30" },
      { name: "New Orleans Saints", city: "New Orleans", abbreviation: "NO", primary_color: "#D3BC8D", secondary_color: "#101820" },
      { name: "New York Giants", city: "New York", abbreviation: "NYG", primary_color: "#0B2265", secondary_color: "#A71930" },
      { name: "New York Jets", city: "New York", abbreviation: "NYJ", primary_color: "#125740", secondary_color: "#000000" },
      { name: "Philadelphia Eagles", city: "Philadelphia", abbreviation: "PHI", primary_color: "#004C54", secondary_color: "#A5ACAF" },
      { name: "Pittsburgh Steelers", city: "Pittsburgh", abbreviation: "PIT", primary_color: "#FFB612", secondary_color: "#101820" },
      { name: "San Francisco 49ers", city: "San Francisco", abbreviation: "SF", primary_color: "#AA0000", secondary_color: "#B3995D" },
      { name: "Seattle Seahawks", city: "Seattle", abbreviation: "SEA", primary_color: "#002244", secondary_color: "#69BE28" },
      { name: "Tampa Bay Buccaneers", city: "Tampa Bay", abbreviation: "TB", primary_color: "#D50A0A", secondary_color: "#FF7900" },
      { name: "Tennessee Titans", city: "Tennessee", abbreviation: "TEN", primary_color: "#0C2340", secondary_color: "#4B92DB" },
      { name: "Washington Commanders", city: "Washington", abbreviation: "WAS", primary_color: "#5A1414", secondary_color: "#FFB612" }
    ]

    teams.each do |team|
      Team.find_or_create_by(name: team[:name]) do |t|
        t.sport = "NFL"
        t.city = team[:city]
        t.abbreviation = team[:abbreviation]
        t.primary_color = team[:primary_color]
        t.secondary_color = team[:secondary_color]
      end
    end
    
    puts "Created #{Team.count} NFL teams"
  end
end