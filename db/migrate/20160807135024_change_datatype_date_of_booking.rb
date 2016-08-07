class ChangeDatatypeDateOfBooking < ActiveRecord::Migration
  def change
    change_column :bookings, :date, :datetime
  end
end
