class Room
    attr_accessor :name, :occupants
  
    def initialize(name, occupants)
      @name = name
      @occupants = []
      @songs = []

    end

    def occupant_count()
        return @occupants.count()
    end 

    def add_customer_to_room(customer)
        @occupants.push(customer)
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
    



  end 