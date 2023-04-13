class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :cohort_id
      t.string :password

      t.timestamps
    end
  end
end
