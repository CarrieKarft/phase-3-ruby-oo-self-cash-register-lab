require "pry"
class CashRegister 
    attr_accessor :total, :discount, :quantity, :items, :last_transaction
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        @last_transaction = price * quantity    
        @total = self.total + ( price * quantity)
        quantity.times do
            self.items << title  
        end
    end

    def apply_discount 
        if self.discount != 0
            self.total = ((100.00 - discount.to_f) / 100) * self.total
            "After the discount, the total comes to $#{self.total.to_i}."

        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = @total - @last_transaction
    end
end
