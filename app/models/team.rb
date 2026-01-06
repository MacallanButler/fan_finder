class Team < ApplicationRecord
    has_many :users
    has_many :bar_teams
    has_many :bars, through: :bar_teams
end
