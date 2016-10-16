class OrdersController < ApplicationController
  def new
    @order = Order.new
    @order.bookings.build
  end

  def create
    order = Order.new(order_params)
    if !order.bookings.empty?
      order.set_date
    end
    order.save
  end

  def show
  end

  def index
  end

  def destroy
    Order.destroy(params[:id])
    redirect_to user_orders_path(current_user), notice: "deleted an order"
  end

  private
    def order_params
      params.require(:order).permit(:user_id, :plan_type, :member_num, :start_date, :end_date, bookings_attributes: [:id, :restaurant_name, :member_num, :description, :date, :destroy])
    end
end
