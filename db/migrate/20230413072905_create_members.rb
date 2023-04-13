class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.integer :contributor_id
      t.integer :project_id
      t.string :password

      t.timestamps
    end
  end
end
