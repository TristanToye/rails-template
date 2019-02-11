class ApplicationController < ActionController::Base
  def authenticate_admin!
    redirect_to new_user_session_path unless current_user&.admin?
  end
end
