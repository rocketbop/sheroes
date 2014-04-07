class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :project, index: true
      t.belongs_to :watchlist, index: true

      t.timestamps
    end
  end
end
