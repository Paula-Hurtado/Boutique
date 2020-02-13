class AddWishlistToOutfits < ActiveRecord::Migration[6.0]
  def change
    add_column :outfits, :wishlist, :boolean
  end
end
