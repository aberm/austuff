class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :total_points, :total_price, :completed

  # has_many :order_items
  # has_many :products, through: :order_items
end
