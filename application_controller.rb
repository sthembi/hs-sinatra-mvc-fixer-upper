require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
	
	post '/transport_results' do # route tells me where to go when action ='/results'
		user_location = params["location"]     	# save their name
		user_miles = params["miles"]   					# save their miles
    decision = transportation_decision(user_location, user_miles)  # pass location and miles to method
    erb :transport_results # this load our transport_results.erb page
  end

end
