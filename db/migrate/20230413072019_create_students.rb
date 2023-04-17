class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.references :cohort, null: false, foreign_key: true
      t.string :password_digest

      t.timestamps
    end
  end
end
