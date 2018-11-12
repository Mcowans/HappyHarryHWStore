class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart do |t|
      t.integer "customer_id", null: false
      t.string "product_id", limit: 45, null: false
      t.string "quantity", limit: 45, null: false
      t.string "date", limit: 45

      t.timestamps
    end
  end
end
