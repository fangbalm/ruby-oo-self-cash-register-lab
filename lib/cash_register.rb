require 'pry'

class CashRegister
   
    # sets an instance variable @total on initialization to zero
    
    # optionally takes an employee discount on initialization (FAILED - 1)

    attr_accessor :total, :discount, :price, :items
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1) 
        # accepts a title and a price and increases the total (FAILED - 1)
            @price = price
            self.total += price * quantity
            quantity.times do 
                @items << title
            end
        end

    def apply_discount
        if discount != 0
            @money_saved = (price * discount)/100
            self.total = self.total - @money_saved
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - @price
        @items.delete(@items.pop) # .pop removes the last element from an array and returns it. therefore by chaining and using the delete method, i am deleting that returned value. 
        if @items == []
            self.total = 0.0
        end
        #returns the total to 0.0 if all items have been removed (FAILED - 1)
    end
  
end

