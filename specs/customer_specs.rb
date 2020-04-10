require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')


class TestCustomer < Minitest::Test

  def setup
    @Customer1 = Customer.new("Gill", 75, 24)

  end

def test_name
    assert_equal("Gill", @Customer1.name())
end 


def test_wallet
  assert_equal(75, @Customer1.wallet())
end


def test_age
  assert_equal(24, @Customer1.age())
end


end 










