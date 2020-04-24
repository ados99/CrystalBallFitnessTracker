class Input < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :record, optional: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :height_feet, presence: true
  validates :height_inches, presence: true
  validates :bed_time, presence: true
  validates :wake_up_time, presence: true
  validates :weight, presence: true
end
