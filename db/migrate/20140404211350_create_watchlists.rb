class CreateWatchlists < ActiveRecord::Migration
  def change
    create_table :watchlists do |t|

      t.timestamps
    end
  end
end
