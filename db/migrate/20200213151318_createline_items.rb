class CreatelineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.integer :outfit_id,                 null: false 
      t.integer :quantity,                  null: false, default: 0
      t.decimal :unit_price,                null: false

      t.timestamps
    end
  end
end
