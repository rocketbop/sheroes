class AddTechnologiesToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :project_type, :string
  	add_column :projects, :project_length, :string
  	add_column :projects, :primary_technology, :string
  	add_column :projects, :secondary_technology, :string
  	add_column :projects, :tertiary_technology, :string

  end
end
