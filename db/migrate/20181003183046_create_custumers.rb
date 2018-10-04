class CreateCustumers < ActiveRecord::Migration[5.1]
  def change
    create_table :custumers do |t|
      t.integer :customer_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.int :address_id

      t.timestamps
    end
  end
end
