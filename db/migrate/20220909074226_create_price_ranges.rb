class CreatePriceRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :price_ranges do |t|
      t.integer :price
      t.boolean :status

      t.timestamps
    end
  end
end
