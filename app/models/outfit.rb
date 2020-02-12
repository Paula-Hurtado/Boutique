class Outfit < ApplicationRecord 
    belongs_to :user 
    has_one_attached :picture
end 