class Api::V1::IceCreamOrdersController < ApplicationController

  def index
    @ice_cream_orders = IceCreamOrder.all
    render json: { ice_cream_orders: @ice_cream_orders }
  end

end
