class UserFlightSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :flight_id
end
