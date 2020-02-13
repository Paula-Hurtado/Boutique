class RemoveWishlistToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :wishlist, :boolean
  end
end
