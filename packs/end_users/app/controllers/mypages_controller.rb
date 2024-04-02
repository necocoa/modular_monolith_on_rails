class MypagesController < ApplicationController
  # GET /mypage
  def show
    render json: Serializer::MypagesShow.new(current_end_user)
  end
end
