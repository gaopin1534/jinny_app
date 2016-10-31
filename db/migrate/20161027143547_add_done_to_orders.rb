class AddDoneToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :done, :bool
  end
end
