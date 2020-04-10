require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../karaoke_bar')
require_relative('../customer')

class TestKaraokeBar < Minitest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Go To 11", [1,2,3], [1,2,3])
    @Customer1 = Customer.new("Gill", 75, 24)


    # @room1 = Room.new("", )
    # @room2 = Room.new("", )
    # @room3 = Room.new("", )
    
    # @song1 = Song.new()
    # @song2 = Song.new()
    # @song3 = Song.new()


  end

  #Test bar name
  def test_name 
    assert_equal("Go To 11", @karaoke_bar.name()) 
  end

  #Test customer name
  def test_name2
    assert_equal("Gill", @Customer1.name())
  end 
  
end 




=begin
def setup
  @earth = Planet.new("Earth", 12756, 149.6, 1)
  @jupiter = Planet.new("Jupiter", 142796, 778.3, 67)
  @mars = Planet.new("Mars", 6787, 227.9, 2)
  @mercury = Planet.new("Mercury", 4878, 57.9, 0)
  @neptune = Planet.new("Neptune", 48600, 4497.1, 13)
  @pluto = Planet.new("Pluto", 2274, 5913, 4)
  @saturn = Planet.new("Saturn", 120660, 1427.0, 62)
  @uranus = Planet.new("Uranus", 51118, 2871.0, 27)
  @venus = Planet.new("Venus", 12104, 108.2, 0)

  @planets = [@earth, @jupiter, @mars, @mercury, @neptune, @pluto, @saturn, @uranus, @venus]
  @solar_system = StarSystem.new("Solar System", @planets)
end
=end