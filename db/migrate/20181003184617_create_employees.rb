class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employee_id
      t.string :job_title
      t.string :deparment_name
      t.string :deparment_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :address_id
      t.datetime :hire_date

      t.timestamps
    end
  end
end
