class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.references :type, null: false, foreign_key: true
      t.string :name
      t.string :socket
      t.string :dimm
      t.string :ssd
      t.string :hdd
      t.string :form
      t.integer :size
      t.integer :capacity
      t.integer :wattage
      t.integer :price

      t.timestamps
    end
  end
end
