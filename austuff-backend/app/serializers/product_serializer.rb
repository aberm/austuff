class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :price, :amount, :points, :img

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :users, through: :orders
end
