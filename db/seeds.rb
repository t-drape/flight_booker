# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.create!([
  { code: "SFO" },
  { code: "PHX" },
  { code: "NYC" },
  { code: "LAX" },
  { code: "CHC" },
  { code: "ORL" },
  { code: "MIA" },
  { code: "PAR" },
  { code: "DUB" },
  { code: "LON" },
  { code: "SIN" },
  { code: "TOK" }
])


Flight.create!([
  { start: Time.now.advance(days: 1),
    duration: 14.2,
    departure_airport_id: 1,
    arrival_airport_id: 12
  },

  { start: Time.now.advance(days: 2),
    duration: 10.5,
    departure_airport_id: 2,
    arrival_airport_id: 10
  },

  { start: Time.now.advance(days: 2),
    duration: 1.2,
    departure_airport_id: 2,
    arrival_airport_id: 4
  },

  { start: Time.now.advance(days: 2),
    duration: 22.7,
    departure_airport_id: 3,
    arrival_airport_id: 11
  }
])
