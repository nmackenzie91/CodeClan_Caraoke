require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../karaoke_bar')
require_relative('../customer')
require_relative('../room')

class TestKaraokeBar < Minitest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Go To 11")
    @customer1 = Customer.new("Gill", 75, 24)
    @room1 = Room.new("Roomy", [])
    @room2 = Room.new("Blues", [])
    @room3 = Room.new("Rock", [])

 
  end

  #Test bar name
  def test_name 
    assert_equal("Go To 11", @karaoke_bar.name()) 
  end

  #Test customer name
  def test_name2
    assert_equal("Gill", @customer1.name())
  end 

  def test_karaoke_bar_has_no_rooms()
    assert_equal(0, @karaoke_bar.room_count())
  end

  def test_karaoke_bar_has_more_than_one_room
    @karaoke_bar.add_rooms(@room1)
    @karaoke_bar.add_rooms(@room2)
    @karaoke_bar.add_rooms(@room3)
    assert_equal(3, @karaoke_bar.room_count())
  end 


  def test_karaoke_bar_has_no_customer()
      assert_equal(0, @karaoke_bar.customer_count())
  end

    def test_karaoke_bar_has_more_than_one_customer
        @karaoke_bar.add_customer(@customer1)
        assert_equal(1, @karaoke_bar.customer_count())
    end 

    def test_add_customer_to_room()
        @karaoke_bar.add_rooms(@room1)
        @karaoke_bar.add_customer(@customer1)
        @karaoke_bar.add_customer_to_room(@room1,@customer1)
        assert_equal(1, @karaoke_bar.room_count())
        assert_equal(1, @karaoke_bar.occupant_count_for_room(@room1))
    end

    def test_add_customer_to_other_room()
        @karaoke_bar.add_customer(@customer1)
        @karaoke_bar.add_customer_to_room(@room2,@customer1)
        assert_equal(0, @karaoke_bar.room_count())
        assert_equal(0, @karaoke_bar.occupant_count_for_room(@room2))
    end


  end
  





