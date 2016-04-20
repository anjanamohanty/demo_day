class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :track_id
      t.integer :project_id
      t.string :github_link
      t.string :twitter_link
      t.string :email_address

      t.timestamps null: false
    end
  end
end
