class Tracker < ApplicationRecord
  has_many :foods
  validates :day, :date, presence: true

  def update_cal(food)
    self.totalcal = self.totalcal + food.calories
    self.save
  end

end



create_table "trackers", force: :cascade do |t|
  t.string "day"
  t.datetime "date"
  t.float "totalcal"


create_table "foods", force: :cascade do |t|
  t.integer "tracker_id"
  t.string "name"
  t.float "calories"
end

