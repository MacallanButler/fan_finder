class Bar < ApplicationRecord
    has_many :bar_teams
    has_many :teams, through: :bar_teams

    validates :name, presence: true
    validates :address, presence: true
    validates :city, presence: true
    validates :name, uniqueness: {scope: [:address, :city], message: "at this address already exists ya muppet" }
end
