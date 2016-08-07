class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.integer :member_num
      t.string :message
      t.time :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
