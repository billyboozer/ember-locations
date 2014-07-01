class LocationSerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :lat, :lng, :comment
end
