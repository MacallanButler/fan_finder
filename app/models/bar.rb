class Bar < ApplicationRecord
    has_many :bar_teams
    has_many :teams, through: :bar_teams
end
