require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../customer')
require_relative('../songs')


class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Room1", [], 3)
    # @room2 = Room.new("Room2", ["Ginl","smith", "neil","Martin","Old Jeffy boi"])
    @customer1 = Customer.new("Steve", 200, 25)
    @customer2 = Customer.new("Boaby", 300, 93)
    @customer3 = Customer.new("Sarah", 100, 18)
    @customer4 = Customer.new("Kevin", 300, 37)

    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Song 2", "Blur")

    @customers = [@customer1, @customer2]
  end

    def test_name()
        assert_equal("Room1", @room1.name)
    end 

    def test_add_customer_to_room()
        @room1.add_customer_to_room(@customer1)
        assert_equal(1, @room1.occupant_count)
    end 

    def test_add_customers_to_room()
      @room1.add_customer_to_room(@customer1)
      @room1.add_customer_to_room(@customer2)
      assert_equal(2, @room1.occupant_count)
    end 


    def test_remove_customer_from_room()
      @room1.add_customer_to_room(@customer1)
      @room1.add_customer_to_room(@customer2)
      @room1.remove_customer_from_room(@customer1)
      assert_equal(1, @room1.occupant_count)
    end  


    def test_remove_all_customers_from_room()
      @room1.add_customer_to_room(@customer1)
      @room1.add_customer_to_room(@customer2)
      @room1.remove_all_customers_from_room(@customer1)
      assert_equal(1, @room1.occupant_count)
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


    def test_max_capacity_of_room()
        @room1.add_customer_to_room(@customer1)
        @room1.add_customer_to_room(@customer2)
        @room1.add_customer_to_room(@customer3)
        @room1.add_customer_to_room(@customer4)   
        assert_equal(3,@room1.occupant_count)
        assert_equal(true, @room1.max_capacity_of_room())     
    end 


end 