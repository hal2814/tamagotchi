
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
require('pry')

tom = Tomagotchi.new()
get('/') do

  # @choice = params.fetch("#doThing")
  # if @choice == "feed"
  #   tom.feed
  # elsif @choice == "play"
  #   tom.play
  # elsif @choice == "rest"
  #   tom.rest
  # end
  # @display = tom.display

  erb(:input)
end

post('/output') do
  @choice = params.fetch("#doThing")

  if @choice == "feed"
    tom.feed
  elsif @choice == "play"
    tom.play
  elsif @choice == "rest"
    tom.rest
  end
  @display = tom.display
  erb(:output)
end
