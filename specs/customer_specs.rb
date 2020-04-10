require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')


class TestCustomer < Minitest::Test

  def setup
    @Customer1 = Customer.new()

  end
end 