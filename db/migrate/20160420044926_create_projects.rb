class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :website
      t.integer :cohort_id

      t.timestamps null: false
    end
  end
end
