require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../customer')
require_relative('../songs')


class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Room1", [] )
    # @room2 = Room.new("Room2", ["Ginl","smith", "neil","Martin","Old Jeffy boi"])
    @customer1 = Customer.new("Steve", 200, 25)
    @customer2 = Customer.new("Boaby", 300, 93)
    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Song 2", "Blur")


  end

    def test_name()
        assert_equal("Room1", @room1.name)
    end 

    def test_add_customer_to_room()
        @room1.add_customer_to_room(@customer1)
        assert_equal(1, @room1.occupant_count)
    end 

    def test_add_customer_to_room()
      @room1.add_customer_to_room(@customer1)
      @room1.add_customer_to_room(@customer2)
      assert_equal(2, @room1.occupant_count)
    end 

    def test_remove_customer_from_room()
      @room1.add_customer_to_room(@customer1)
      @room1.remove_customer_from_room(@customer1)
      assert_equal(0, @room1.occupant_count)
    end



    def test_add_song_to_room()
        @room1.add_song_to_room(@song1)
        assert_equal(1, @room1.song_count)
    end 

    def test_add_songs_to_room()
      @room1.add_song_to_room(@song1)
      @room1.add_song_to_room(@song2)
      assert_equal(2, @room1.song_count)
  end 

   

end 