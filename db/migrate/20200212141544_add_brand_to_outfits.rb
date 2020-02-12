class AddBrandToOutfits < ActiveRecord::Migration[6.0]
  def change
    add_column :outfits, :brand, :string
  end
end
