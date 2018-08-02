class Order < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :room_id, presence: true
  validates :owner, presence: true
  validates :customer, presence: true
  validates :date_start, presence: true
  validates :state, presence: true
end
