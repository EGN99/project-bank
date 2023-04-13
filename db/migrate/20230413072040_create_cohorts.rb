class CreateCohorts < ActiveRecord::Migration[7.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :category
      t.integer :admin_id
      
      t.timestamps
    end
  end
end
