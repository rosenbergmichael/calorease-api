class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.string :day
      t.datetime :date
      t.float :totalcal
      t.timestamps
    end
  end
end
