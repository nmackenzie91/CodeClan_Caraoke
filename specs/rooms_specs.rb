require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../customer')


class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Room1")
    @customer1 = Customer.new("Steve", 200, 25)

  end

    def test_name()
        assert_equal("Room1", @room1.name)
    end 

    def test_add_customer_to_room()
        @room1.add_customer_to_room(@customer1)
        assert_equal(1, @room1.occupant_count)
    end 


end 