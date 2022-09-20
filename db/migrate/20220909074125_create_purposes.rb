class CreatePurposes < ActiveRecord::Migration[7.0]
  def change
    create_table :purposes do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
