class AddHashNameToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :hash_name, :string
  end
end
