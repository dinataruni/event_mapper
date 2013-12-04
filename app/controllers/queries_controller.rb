class QueriesController < ApplicationController
    require 'net/http'
    
    def index
      @geolocator = session[:current_position]
      @end_time = (Time.now.to_i + 7200) * 1000
      @muquery = "https://api.meetup.com/2/open_events?&sign=true&lon=%s&lat=%s&time=0,%s&category=34&radius=1&page=15&key=324f2a59787e80805a38532c2ea772c" % [@geolocator.latitude, @geolocator.longitude, @end_time]
<<<<<<< HEAD
=======
      
      p @muquery
>>>>>>> 00a87e80cedbc542cdfb4a003218a7b886afda2a
      
      api_uri = URI(@muquery)
      https = Net::HTTP.get_response(URI.parse(@muquery))
      # https.use_ssl=true
      p api_uri
      data = https.body
      result = JSON.parse(data)
      p result
      # @r = https.request_get(api_uri.path)
      # render :json => @r
  end

end

