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
    @room1 = Room.new("Singing on a Prayer", [], 3)
    @room2 = Room.new("Sing Life Away", [], 3)
    @room3 = Room.new("Bring the Noise", [], 3)

 
  end

    def test_bar_name 
        assert_equal("Go To 11", @karaoke_bar.name()) 
    end

    def test_customer_name
        assert_equal("Gill", @customer1.name())
    end 

    def test_room_name
        assert_equal("Bring the Noise", @room3.name())
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





    def test_add_entry_fee()
        assert_equal(75, @customer1.show_money_left())
        @customer1.give_money(20)
        assert_equal(55, @customer1.show_money_left())
    end 


  
end
  





