class ChangeTrackersDatetimeToDateOnly < ActiveRecord::Migration[6.0]
  def change
    change_column :trackers, :date, :date
  end
end
