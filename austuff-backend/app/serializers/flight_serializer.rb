class FlightSerializer < ActiveModel::Serializer
  attributes :id, :points, :destination, :img

  has_many :user_flights
  has_many :users, through: :user_flights
end
