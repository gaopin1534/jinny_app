class AddMembenumOrders < ActiveRecord::Migration
  def change
    add_column :orders, :member_num, :integer
  end
end
