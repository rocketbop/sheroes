class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :current_team_size
      t.integer :desired_team_size
      t.text :headline

      t.timestamps
    end
  end
end
