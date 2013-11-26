class Event < ActiveRecord::Base
  attr_accessible :name, :lat, :lon, :radius, :description, :event_url, :time
end
