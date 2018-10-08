class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :customer_id
      t.integer :product_id
      t.float :amount
      t.datetime :date

      t.timestamps
    end
  end
end
