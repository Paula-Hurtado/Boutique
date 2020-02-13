class LineItem < ActiveRecord::Base
    belongs_to :outfit
    def self.for_outfit(outfit)
        item = self.new
        item.quantity = 1
        item.outfit = outfit
        item.unit_price = outfit.price
        item
    end 
end