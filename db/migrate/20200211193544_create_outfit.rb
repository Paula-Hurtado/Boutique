class CreateOutfit < ActiveRecord::Migration[6.0]
  def change
    create_table :outfits do |t|
      t.string :size
      t.decimal :price 
      t.string :color
      t.string :category 
    end
  end
end
