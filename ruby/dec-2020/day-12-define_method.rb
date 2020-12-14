
class DominoesOrder

    attr_accessor :status, :index

    @@statuses = ["placed", "preped", "baked", "boxed", "delivered"]

    def initialize(order_status="placed")
        self.status = order_status
        self.index = @@statuses.find_index(self.status)
    end

    def update_status
        self.status = @@statuses[self.index += 1]
        "status is #{self.status}"
    end 

    def self.statuses
        @@statuses
    end

    self.statuses.each do |status|        
        # dynamically creates methods based on the different statuses
        define_method("is_#{status}?") do
            self.status == status
        end
    end

end

order = DominoesOrder.new
puts order.is_placed? # => true
puts order.is_preped? # => false
puts order.update_status # => status is preped
puts order.is_preped? # => true
puts order.is_baked? # => false
puts order.update_status # status is baked
puts order.is_baked? # => true

