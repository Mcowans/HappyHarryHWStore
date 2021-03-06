class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|      
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, unique: true, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :phone, null: false
      t.integer :address_id
      t.integer :admin, default: 0

      #for email confirmation and lock accounts after x failed attempts to sign in
      t.string   :confirmation_token, unique: true
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email
      t.integer  :failed_attempts, default: 0, null: false
      t.string   :unlock_token, unique: true
      t.datetime :locked_at
      
      t.timestamps

       ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
    end
    #add_index :users, :email,                unique: true
    #add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
