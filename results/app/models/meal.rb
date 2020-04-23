class Meal < ApplicationRecord
  belongs_to :user, optional: true
  validates :meal, presence: true
  validates :Calories, presence: true
end
