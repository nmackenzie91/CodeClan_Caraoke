class KaraokeBar
    attr_accessor :name, :rooms, :customers
    
    def initialize(name)
      @name = name
      @rooms = []
      @customers = []
    #   @till = till
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
    
    # def remove_customer_from_room()
    #   @room.delete

    # def test_remove_customer_from_room
    #   @karaoke_bar.remove_customer_from_room(@Customer1)
    #   assert_equal(0, @room.room_count())
    # end 

   

    # def create_room(room)
    #     @room.push(room)
    # end 


  end

  # def test_can_add_customer_to_room
  #   @karaoke_bar.add_customer(@Customer1)
  #   assert_equal(1, @karaoke_bar.add_customer)
  # end 


  # def initialize(name, till)
  #   @name = name
  #   @till = till
  #   @drinks = []