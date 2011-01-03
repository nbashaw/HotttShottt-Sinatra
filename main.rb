require 'rubygems'
require 'sinatra'
require 'swish'
#require 'dm-core'
#require 'dm-migrations'

#DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

#class Leader
#  include DataMapper::Resource  
#  property :id,           Serial
#  property :shot_id,      Integer
#  property :win_count,    Integer, :default => 1
#end

get '/' do
  @shot1 = Dribbble::Shot.find(rand(90000) + 100)
  @shot2 = Dribbble::Shot.find(rand(90000) + 100)
  erb :match
end

get '/vote/*' do
  vote_id = params[:splat]
  # unless leader already exists
    # create a new leader for that shot in the db with a default of 1 vote
  # else add one point to it's count
end

get '/leaderboard' do
  erb :leaderboard
end

#DataMapper.auto_upgrade!
