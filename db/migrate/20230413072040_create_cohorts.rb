class CreateCohorts < ActiveRecord::Migration[7.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.integer :no_of_students
      t.references :course, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
