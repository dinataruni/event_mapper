class Query < ActiveRecord::Base
  attr_reader :name, :lat, :lon, :radius, :description, :event_url, :time
end
