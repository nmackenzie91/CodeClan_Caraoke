class KaraokeBar
    attr_accessor :name, :rooms, :customers
    
    def initialize(name)
      @name = name
      @rooms = []
      @customers = []
      @till = 0
      @entry_fee = 20
    end

    def room_count()
      return @rooms.size()
    end

    def add_rooms(room)
      @rooms.push(room)
    end 

    def customer_count()
      return @customers.size()
    end

    def add_customer(customer)
      @customers.push(customer)
    end

    def add_customer_to_room(room,customer)
        for rm in @rooms do 
            if rm == room
                room.add_customer_to_room(customer)
            end 
        end
    end 

    def occupant_count_for_room(room)
        room.occupant_count()
    end
    
  end
