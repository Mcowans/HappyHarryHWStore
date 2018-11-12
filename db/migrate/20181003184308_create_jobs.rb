class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.float :salary

      t.timestamps
    end
  end
end
