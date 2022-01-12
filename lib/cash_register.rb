class CashRegister
    attr_accessor :total, :discount, :items_arr, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @items_arr = []
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        quantity.times { self.items_arr << title }
        self.last_transaction = price * quantity
        self.total += price * quantity
    end

    def apply_discount
        if self.discount != 0
            self.total = self.total - (self.total * (self.discount.to_f/100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        self.items_arr
    end

    def void_last_transaction
        self.total -= last_transaction

    end

end
