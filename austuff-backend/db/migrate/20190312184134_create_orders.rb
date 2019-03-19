class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :total_points
      t.integer :total_price
      t.boolean :completed

      t.timestamps
    end
  end
end
