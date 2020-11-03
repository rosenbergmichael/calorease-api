class Tracker < ApplicationRecord
  has_many :foods

  validates :day, :date, presence: true

end
