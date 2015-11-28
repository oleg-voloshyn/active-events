class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :published_on, :latitude, :longitude
end
