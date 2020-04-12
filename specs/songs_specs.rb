require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs')

class TestSongs < Minitest::Test

  def setup
    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Song 2", "Blur")
    @song3 = Song.new("Let it go", "Frozen")
    @song4 = Song.new("Shake it off", "Taylor Swift")
    @song5 = Song.new("Summer Night", "Grease")
    @song7 = Song.new("Livin' On A Prayer", "Bon Jovi")
    @song8 = Song.new("Gangnam Style", "PSY")



  end
    def test_title
        assert_equal("Wonderwall", @song1.title())
    end 


    def test_artist
        assert_equal("Oasis", @song1.artist())
    end

    

end 