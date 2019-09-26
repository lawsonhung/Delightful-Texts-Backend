class Api::V1::IceCreamsController < ApplicationController
  skip_before_action :authorized

  def index
    @ice_creams = IceCream.all
    render json: { ice_creams: @ice_creams }
  end

  def create
    @ice_cream = IceCream.create(ice_cream_params)
    render json: { ice_cream: @ice_cream }
  end

  private

  def ice_cream_params
    params.require(:ice_cream).permit(:flavor, :size, :m_and_ms, :peanuts, :sprinkles, :hot_chocolate_fudge)
  end

end