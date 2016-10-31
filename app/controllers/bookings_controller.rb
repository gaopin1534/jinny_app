class BookingsController < ApplicationController
  before_action :authenticate_user, only: [:index]
  def index
    @order = Order.find(params[:order_id])
  end
end
