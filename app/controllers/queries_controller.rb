class QueriesController < ApplicationController
  def index 
    @end_time = (Time.now.to_i + 7200) * 1000
    @muquery = "https://api.meetup.com/2/open_events?&sign=true&lon=%s&lat=%s&time=0,%s&category=34&radius=1&page=15&key=324f2a59787e80805a38532c2ea772c" % [@geolocator.latitude, @geolocator.longitude, @end_time] 
  end
end