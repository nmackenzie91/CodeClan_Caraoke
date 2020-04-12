require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')


class TestCustomer < Minitest::Test

    def setup
        @customer1 = Customer.new("Gill", 75, 24)
        @customer2 = Customer.new("Sam", 250, 67)

    end


    
    def test_names
        assert_equal("Gill", @customer1.name())
        assert_equal("Sam", @customer2.name())
    end 

    def test_wallet
        assert_equal(75, @customer1.wallet())
    end

    def test_age
        assert_equal(24, @customer1.age())
    end




    def test_give_money
        assert_equal(75, @customer1.show_money_left())
        @customer1.give_money(20)
        assert_equal(55, @customer1.show_money_left())
    end 
    
end 










