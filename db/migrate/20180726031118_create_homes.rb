class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.integer :room_number
      t.integer :room_empty
      t.string :description

      t.timestamps
    end
  end
end
