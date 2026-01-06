namespace :data do
  desc "Populate NFL Teams Table"
  task populate_teams: :environment do
    teams = [
      { name: "Arizona Cardinals", city: "Arizona", abbreviation: "ARI" },
      { name: "Atlanta Falcons", city: "Atlanta", abbreviation: "ATL" },
      { name: "Baltimore Ravens", city: "Baltimore", abbreviation: "BAL" },
      { name: "Buffalo Bills", city: "Buffalo", abbreviation: "BUF" },
      { name: "Carolina Panthers", city: "Carolina", abbreviation: "CAR" },
      { name: "Chicago Bears", city: "Chicago", abbreviation: "CHI" },
      { name: "Cincinnati Bengals", city: "Cincinnati", abbreviation: "CIN" },
      { name: "Cleveland Browns", city: "Cleveland", abbreviation: "CLE" },
      { name: "Dallas Cowboys", city: "Dallas", abbreviation: "DAL" },
      { name: "Denver Broncos", city: "Denver", abbreviation: "DEN" },
      { name: "Detroit Lions", city: "Detroit", abbreviation: "DET" },
      { name: "Green Bay Packers", city: "Green Bay", abbreviation: "GB" },
      { name: "Houston Texans", city: "Houston", abbreviation: "HOU" },
      { name: "Indianapolis Colts", city: "Indianapolis", abbreviation: "IND" },
      { name: "Jacksonville Jaguars", city: "Jacksonville", abbreviation: "JAX" },
      { name: "Kansas City Chiefs", city: "Kansas City", abbreviation: "KC" },
      { name: "Las Vegas Raiders", city: "Las Vegas", abbreviation: "LV" },
      { name: "Los Angeles Chargers", city: "Los Angeles", abbreviation: "LAC" },
      { name: "Los Angeles Rams", city: "Los Angeles", abbreviation: "LAR" },
      { name: "Miami Dolphins", city: "Miami", abbreviation: "MIA" },
      { name: "Minnesota Vikings", city: "Minnesota", abbreviation: "MIN" },
      { name: "New England Patriots", city: "New England", abbreviation: "NE" },
      { name: "New Orleans Saints", city: "New Orleans", abbreviation: "NO" },
      { name: "New York Giants", city: "New York", abbreviation: "NYG" },
      { name: "New York Jets", city: "New York", abbreviation: "NYJ" },
      { name: "Philadelphia Eagles", city: "Philadelphia", abbreviation: "PHI" },
      { name: "Pittsburgh Steelers", city: "Pittsburgh", abbreviation: "PIT" },
      { name: "San Francisco 49ers", city: "San Francisco", abbreviation: "SF" },
      { name: "Seattle Seahawks", city: "Seattle", abbreviation: "SEA" },
      { name: "Tampa Bay Buccaneers", city: "Tampa Bay", abbreviation: "TB" },
      { name: "Tennessee Titans", city: "Tennessee", abbreviation: "TEN" },
      { name: "Washington Commanders", city: "Washington", abbreviation: "WAS" }  
    ]

    teams.each do |team|
      Team.find_or_create_by(
        name: team[:name], 
        sport: "NFL",
        city: team[:city],
        abbreviation: team[:abbreviation]
      )
end
  end
end
