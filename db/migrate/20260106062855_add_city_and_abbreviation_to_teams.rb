class AddCityAndAbbreviationToTeams < ActiveRecord::Migration[8.1]
  def change
    add_column :teams, :city, :string
    add_column :teams, :abbreviation, :string
  end
end
