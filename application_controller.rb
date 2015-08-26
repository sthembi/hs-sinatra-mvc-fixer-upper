require 'bundler'
Bundler.require
#this was missing
require_relative 'models/model.rb' #<== require models logic

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
	
	post '/transport_results' do # route tells me where to go when action ='/results'
    # incorrect hash notation
		user_location = params[:location]     	# save the location
    user_miles = params[:distance]   					# save the miles  #correct the label for miles
    # the method name was not correct
    @decision = transport_decision(user_location, user_miles)  # pass location and miles to method
    erb :transport_results # this loads our transport_results.erb page
  end

end
