class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :points
  
  has_many :orders
  has_many :order_items, through: :orders
  has_many :products, through: :order_items
  has_many :user_flights
  has_many :flights, through: :user_flights
end
