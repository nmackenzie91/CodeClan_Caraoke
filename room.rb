class Room
    attr_reader :name, :occupants
  
    def initialize(name, occupants)
      @name = name
      @occupants = occupants

    end
  end