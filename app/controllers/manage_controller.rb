class ManageController < ApplicationController
  authorize_resource class: false
  def index
    @orders = Order.all
  end

  def bookings
    @order = Order.find(params[:id])
  end

  def switch
    order = Order.find(params[:id])
    order.switch
    order.save
    redirect_to manage_index_path
  end
end
