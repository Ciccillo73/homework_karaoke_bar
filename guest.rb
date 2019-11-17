class Guest
  attr_reader :name, :wallet
  def initialize(name, wallet)
   @name = name
   @wallet = wallet
  end

  def sufficient_funds?(item)
    return wallet >= item.price()
  end

   def rent_a_room(room)
     if sufficient_funds?(room)
       @wallet -= room.price()
     end

   end

end
