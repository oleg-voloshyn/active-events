class Event < ActiveRecord::Base
  validates :name, :description, presence: true
end
