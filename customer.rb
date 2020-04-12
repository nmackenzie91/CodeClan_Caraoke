class Customer
    attr_accessor :name, :wallet, :age
  
    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age 
    end

    

        def give_money(value)
            if @wallet >= value
                @wallet -= value
            else    
                return false 
            end
        end 


        def show_money_left()
            return @wallet
        end 
  



end
  