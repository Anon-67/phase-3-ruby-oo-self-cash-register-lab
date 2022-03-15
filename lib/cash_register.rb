

class CashRegister
    attr_accessor :total, :discount, :items, :new_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.new_item =(price * quantity)
        self.total += (price * quantity)
        quantity.times do
            self.items << title
        end

    end

    def apply_discount
        if discount != 0
            discount_percent = ((100 - @discount).to_f/100)
            self.total= (self.total * discount_percent).to_int
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= new_item
    end


end
