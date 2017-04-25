require 'sinatra'
require 'sinatra/reloader'
require './lib/tamagotchi'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @tama = Tama.new(params.fetch('tama_name'))
  Tama.add_tama(@tama)
  # @tama.live_time # set master timer
  erb(:output)
end

get('/feed') do
  @tama = Tama.return_tama_at_index(0)
  @com = @tama.feed
  # redirect('/output')
  erb(:output)
end

get('/play') do
  @tama = Tama.return_tama_at_index(0)
  @com = @tama.play
  erb(:output)
end

get('/sleep') do
  @tama = Tama.return_tama_at_index(0)
  @com = @tama.zzz
  erb(:output)
end

get('/time') do
  @tama = Tama.return_tama_at_index(0)
  @com = ""
  @time = Time.new()
  erb(:output)
end

get('/time_diff') do
  @tama = Tama.return_tama_at_index(0)
  @com = ""
  erb(:output)
end
