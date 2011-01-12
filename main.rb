require 'rubygems'
require 'sinatra'
require 'haml'
require 'swish'

get '/' do
  @shot1 = Dribbble::Shot.find(rand(90000) + 100)
  @shot2 = Dribbble::Shot.find(rand(90000) + 100)
  haml :match
end

get '/vote/*' do
  vote_id = params[:splat]
  redirect '/'
end

get '/leaderboard' do
  haml :leaderboard
end

get '/screen.css' do
  sass :screen
end