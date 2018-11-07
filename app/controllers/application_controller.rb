class ApplicationController < ActionController::Base
  before_action :authenticate, unless: :devise_controller?

  def authenticate
    redirect_to new_user_session_path unless user_signed_in? || company_signed_in?
  end
end
