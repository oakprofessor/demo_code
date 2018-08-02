class RoomFacilite < Application
  belongs_to :facility
  belongs_to :room

  validates :room_id, presence: true
  validates :facility_id, presence: true
  validates :number, numericality: true
  validates :price, numericality: true, presence: true
  validates :refund, numericality: true
end
