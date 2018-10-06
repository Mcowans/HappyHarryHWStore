class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|      
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, unique: true, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :phone, null: false
      t.integer :address_id

      #for email confirmation and lock accounts after x failed attempts to sign in
      t.string   :confirmation_token, unique: true
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email
      t.integer  :failed_attempts, default: 0, null: false
      t.string   :unlock_token, unique: true
      t.datetime :locked_at
      
      t.timestamps
    end
  end
end
