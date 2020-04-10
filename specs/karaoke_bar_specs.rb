require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../karaoke_bar')

class TestKaraokeBar < Minitest::Test

  def setup
    @karaoke_bar = KaraokeBar.new()

    @room1 = Room.new("", )
    @room2 = Room.new("", )
    @room3 = Room.new("", )
    
    @song1 = Song.new()
    @song2 = Song.new()
    @song3 = Song.new()
  end
end 