class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :orders
  has_many :order_items, through: :orders
  has_many :products, through: :order_items
  has_many :user_flights
  has_many :flights, through: :user_flights

  # after_find do |user|
  #   user.update(points: user.orders.map {|order| order.total_points }.compact.inject(:+))
  # end

end
