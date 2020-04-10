class KaraokeBar
    attr_reader :name, :rooms, :customers
    
    def initialize(name, rooms, customers)
      @name = name
      @rooms = rooms
      @customers = customers
    #   @till = till
    end

  end

  # def initialize(name, till)
  #   @name = name
  #   @till = till
  #   @drinks = []