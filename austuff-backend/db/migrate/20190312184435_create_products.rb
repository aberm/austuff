class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :amount
      t.integer :points
      t.string :img

      t.timestamps
    end
  end
end
