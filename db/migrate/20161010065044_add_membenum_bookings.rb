class AddMembenumBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :member_num, :integer
  end
end
