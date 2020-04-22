class Meal < ApplicationRecord
  belongs_to :user
  validates :Breakfast_Calorie, presence: true
  validates :Lunch_Calorie, presence: true
  validates :Dinner_Calorie, presence: true
  validates :Snack_Calorie, presence: true
end
