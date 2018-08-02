class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :room, foreign_key: true
      t.integer :owner_id, foreign_key: true
      t.integer :customer_id, foreign_key: true
      t.date :date_start
      t.date :date_end
      t.string :state
      t.string :description

      t.timestamps
    end
    add_index :orders, :owner_id
    add_index :orders, :customer_id
  end
end
