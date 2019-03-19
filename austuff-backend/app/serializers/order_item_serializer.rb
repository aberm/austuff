class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :product_id, :quantity,
     :review, :rating, :points, :price
   belongs_to :product
end
