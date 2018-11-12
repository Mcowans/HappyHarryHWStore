class CreateDeparments < ActiveRecord::Migration[5.1]
  def change
    create_table :deparments do |t|
      t.string :deparment_name

      t.timestamps
    end
  end
end
