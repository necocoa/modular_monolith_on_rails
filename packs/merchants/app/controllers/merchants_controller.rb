class MerchantsController < ApplicationController
  # GET /merchant
  def show
    render json: Serializer::MerchantsShow.new(current_merchant)
  end
end
