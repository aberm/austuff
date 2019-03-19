class AddDefaultValueToOrderCompleted < ActiveRecord::Migration[5.2]
  def up
    change_column :orders, :completed, :boolean, default: false
  end

  def down
    change_column :orders, :completed, :boolean, default: nil
  end
end
