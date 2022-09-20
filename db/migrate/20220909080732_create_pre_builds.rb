class CreatePreBuilds < ActiveRecord::Migration[7.0]
  def change
    create_table :pre_builds do |t|
      t.references :purpose, null: false, foreign_key: true
      t.references :price_range, null: false, foreign_key: true
      t.string :cpu
      t.string :cooler
      t.string :main
      t.string :ram
      t.string :ssd
      t.string :hdd
      t.string :gpu
      t.string :psw
      t.string :case
      t.integer :price
      t.boolean :status

      t.timestamps
    end
  end
end
