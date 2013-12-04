class Query < ActiveRecord::Base
  has_many :events
  attr_reader :name, :lat, :lon, :radius, :description, :event_url, :time
end
