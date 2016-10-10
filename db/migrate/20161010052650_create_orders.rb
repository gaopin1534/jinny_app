class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :plan_type
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
