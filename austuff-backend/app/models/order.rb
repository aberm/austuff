class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items

  before_update :update_price, unless: :total_price?

  private

  def total_price?
    !!self.total_price
  end

  def update_price
    # only works for single products
    # byebug
    self.total_price = self.order_items.inject(0){|sum,x| sum + x.price }
    self.save

  end

end
