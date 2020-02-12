class RemoveBrandToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :brand, :string
  end
end
