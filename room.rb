class Room
    attr_accessor :name, :occupants
  
    def initialize(name, occupants, capacity)
      @name = name
      @occupants = []
      @capacity = capacity
      @songs = []
      

    end

    def occupant_count()
        return @occupants.count()
    end 

    def add_customer_to_room(customer)
        if max_capacity_of_room == false 
            @occupants.push(customer)
            puts "you can enter the room"
        else 
            puts "Please find another room"
        end
    end 

    def song_count()
      return @songs.count()
    end 

    def add_song_to_room(song)
      @songs.push(song)
    end

    def remove_customer_from_room(customer)
      @occupants.delete(customer)
    end



    def remove_all_customers_from_room(customer)
      @occupants.delete(customer)
    end
    


    def max_capacity_of_room()
        if @capacity <= occupant_count()
            return true
        else 
            return false 
        end
    end 


  end 