class CreateBarTeams < ActiveRecord::Migration[8.1]
  def change
    create_table :bar_teams do |t|
      t.references :bar, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
