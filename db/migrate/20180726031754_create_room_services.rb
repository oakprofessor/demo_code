class CreateRoomServices < ActiveRecord::Migration[5.2]
  def change
    create_table :room_services do |t|
      t.references :service, foreign_key: true
      t.references :room, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
