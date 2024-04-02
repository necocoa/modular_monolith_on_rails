class MerchantsController < ApplicationController
  # GET /merchants
  def index
    merchants = Merchant.all
    render json: Serializer::MerchantsIndex.new(merchants)
  end
end
