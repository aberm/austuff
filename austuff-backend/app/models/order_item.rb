class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  after_create :update_price

  def update_price
    # only works for single products
    self.update(price: self.product.price * self.quantity)

  end
end
