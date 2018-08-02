class Facility < ApplicationRecord
  has_many :room_facilites
  has_many :rooms, through: :room_facilites

  validates :name, presence: true
end
