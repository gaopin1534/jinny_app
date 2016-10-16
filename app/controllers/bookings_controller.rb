class BookingsController < ApplicationController
  def index
    @order = Order.find(params[:order_id])
  end
end
