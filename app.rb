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
  @tama_lvl = @tama.lvl
  @tama_name = @tama.name
  @tama_health = @tama.health
  @tama_fedlvl = @tama.fed_lvl
  erb(:output)
end

get('/feed') do
  @tama2 = Tama.return_tama_at_index(0)
  @com = @tama2.feed
  @tama_lvl = @tama2.lvl
  @tama_name = @tama2.name
  @tama_health = @tama2.health
  @tama_fedlvl = @tama2.fed_lvl
  erb(:output)
end

get('/play') do
  @com = @tama.play
  erb(:output)
end

get('/sleep') do
  @com = @tama.zzz
  erb(:output)
end
