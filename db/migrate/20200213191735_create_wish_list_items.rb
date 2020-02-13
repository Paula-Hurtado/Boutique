class CreateWishListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wish_list_items do |t|
      t.integer :user_id
      t.integer :outfit_id

      t.timestamps
    end
  end
end
