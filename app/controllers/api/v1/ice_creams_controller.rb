class Api::V1::IceCreamsController < ApplicationController

  def index
    @ice_creams = IceCream.all
    # byebug
    render json: { ice_creams: @ice_creams }
  end

end