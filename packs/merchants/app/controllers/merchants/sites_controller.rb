module Merchants
  class SitesController < ApplicationController
    # GET /merchants/site
    def show
      render json: Serializer::Merchants::SitesShow.new(current_merchant.site)
    end

    # PATCH /merchants/site
    def update
      if current_merchant.site.update(site_params)
        render json: Serializer::Merchants::SitesShow.new(current_merchant.site), status: :craeted
      else
        render json: {}, status: :unprocessable_entity
      end
    end

    private

    def site_params
      params.require(:site).permit(:published)
    end
  end
end
