class CreateRoomFacilites < ActiveRecord::Migration[5.2]
  def change
    create_table :room_facilites do |t|
      t.references :facility, foreign_key: true
      t.references :room, foreign_key: true
      t.string :label
      t.integer :number
      t.float :price
      t.float :refund
      t.string :state

      t.timestamps
    end
  end
end
