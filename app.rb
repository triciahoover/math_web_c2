require 'sinatra'
require_relative 'math.rb'

get '/' do 
	erb :home
end

post '/math' do
	math_type = params[:math_type]
	p1 = params[:p1]
	p2 = params[:p2]
	redirect '/results?math_type=' + math_type + '&p1=' + p1 + '&p2=' + p2
end

get '/results' do
	math_type = params[:math_type]
	p1 = params[:p1]
	p2 = params[:p2]
	erb :results, :locals => {:math_type => math_type, :p1 => p1, :p2 => p2}
end