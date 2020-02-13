class User < ApplicationRecord 
     # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :username, presence: true
  has_many :outfits
  has_many :wish_list_items
  
  
  def wish_list_outfits
    wish_list_items.map do |wl|
      wl.outfit
    end
  end

  
end