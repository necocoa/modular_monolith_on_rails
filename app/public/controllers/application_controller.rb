class ApplicationController < ActionController::API
  private

  def current_merchant
    # Fix: Auth
    @current_merchant ||= Merchant.first
  end
end
