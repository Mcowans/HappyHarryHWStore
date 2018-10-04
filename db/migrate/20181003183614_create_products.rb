class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.float :price
      t.string :deparment_name
      t.integer :SKU
      t.integer :quantity

      t.timestamps
    end
  end
end
