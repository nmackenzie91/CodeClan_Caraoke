require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')


class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Room1", [])

  end

    def test_name
        assert_equal("Room1"@room1.name)
    end 

end 