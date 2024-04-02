class ApplicationController < ActionController::API
  private

  def current_merchant
    # Fix: Auth
    @current_merchant ||= Merchant.first
  end

  def current_end_user
    # Fix: Auth
    @current_end_user ||= EndUser.first
  end
end
