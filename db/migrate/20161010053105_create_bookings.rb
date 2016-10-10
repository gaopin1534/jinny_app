class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :order_id
      t.string :restaurant_name
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
