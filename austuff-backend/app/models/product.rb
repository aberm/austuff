class Product < ApplicationRecord
  after_create :add_points

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :users, through: :orders

  private

  def add_points
    self.update(points: (self.price/100).floor)
  end
end
