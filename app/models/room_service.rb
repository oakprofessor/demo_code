class RoomService < ApplicationRecord
  belongs_to :service
  belongs_to :room

  validates :room_id, presence: true
  validates :service_id, presence: true
  validates :price, presence: true, numericality: true
end
