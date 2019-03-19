class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :points
      t.string :destination
      t.string :img

      t.timestamps
    end
  end
end
