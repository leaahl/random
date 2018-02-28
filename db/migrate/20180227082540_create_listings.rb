class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title, null: false
      t.text :description
      t.float :price, null: false
      t.boolean :active, default: true, null: false
      t.string :brand
      t.integer :condition

      t.timestamps
    end
  end
end
