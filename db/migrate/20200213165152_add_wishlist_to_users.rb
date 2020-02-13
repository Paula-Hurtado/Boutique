class AddWishlistToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :wishlist, :boolean
  end
end
