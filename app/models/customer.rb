class Customer < ActiveRecord::Base
    has_many :orders
    has_many :items, through: :orders

    def group_orders
        grouped_orders = {}
        self.orders.each do |o|
            if grouped_orders.keys.include?(o.order_number)
                grouped_orders[o.order_number] << o
            else
                grouped_orders[o.order_number] = [o]
            end
        end
        grouped_orders
    end
end