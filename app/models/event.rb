 class Event
  include ActiveModel::Serializers::JSON
  belongs_to :query

  attr_reader :name, :lat, :lon, :distance, :description, :event_url, :time

  def attributes=(hash)
    hash.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def attributes
    instance_values
  end
end
