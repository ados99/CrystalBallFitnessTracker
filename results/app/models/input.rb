class Input < ApplicationRecord
  belongs_to :user
  validates :age, presence: true
  validates :gender, presence: true
  validates :height, presence: true
  validates :weight, presence: true
end
