class Event < ActiveRecord::Base
  belongs_to :query
  attr_reader :name, :lat, :lon, :radius, :description, :event_url, :time
end
