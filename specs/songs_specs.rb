require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs')

class TestSongs < Minitest::Test

  def setup
    @song1 = Song.new()

  end
end 