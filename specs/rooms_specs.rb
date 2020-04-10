require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')


class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new()

  end
end 