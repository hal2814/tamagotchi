class Tomagotchi
  attr_accessor :food, :energy, :fun
  def initialize
    @food = 100
    @energy = 100
    @fun = 100
  end

  def feed
    @food +=15
    @energy -=20
    @fun -=10
    # puts "food: #{@food} sleep: #{@energy} fun: #{@fun}"
    return "feed"
  end

  def rest
    @food -=10
    @energy +=15
    @fun -=20
    # puts "food: #{@food} sleep: #{@energy} fun: #{@fun}"
    return "rest"
  end

  def play
    @food -=20
    @energy -=10
    @fun +=15
    # puts "food: #{@food} sleep: #{@energy} fun: #{@fun}"
    return "play"
  end

  def display
    return "food: #{@food} sleep: #{@energy} fun: #{@fun}"
  end
end


# def time_passes
#   time = 0
#   while @@food >= 1
#     5.downto(1) do |time|
#       time = "#{'%02d' % time}"
#       # puts time
#       # puts "food: #{@@food}"
#       @@food -= 1
#       sleep 1
#     end
#   end
#   return @@food
# end

# 5.downto(0) do |time|
#   puts "#{'%02d' % time}"
#   sleep 2
# end
#
#
obj = Tomagotchi.new()
obj.feed
