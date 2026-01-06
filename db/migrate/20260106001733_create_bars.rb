class CreateBars < ActiveRecord::Migration[8.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
