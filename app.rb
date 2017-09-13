
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
require('pry')

tom = Tomagotchi.new()
get('/') do
  @choice = params.fetch("#doThing")

  if @choice == "Feed"
    tom.feed
  elsif @choice == "Play"
    tom.play
  elsif @choice == "Rest"
    tom.rest
  end
  @display = tom.display

  erb(:input)
end
