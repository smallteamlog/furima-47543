class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item
  def index
    @order_destination = OrderDestination.new
  end

  def create
    binding.pry
    @order_destination = OrderDestination.new(order_params)

    if @order_destination.valid?
      @order_destination.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def order_params
    params.require(:order_destination).permit(:post_code, :prefecture_id, :city, :street, :building_name,
                                              :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
