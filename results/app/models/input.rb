class Input < ApplicationRecord
  belongs_to :user, optional: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :height_feet, presence: true
  validates :height_inches, presence: true
  validates :weight, presence: true
end
