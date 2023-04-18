class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.integer :category, null: false, default: 0

      t.timestamps
    end
  end
end
