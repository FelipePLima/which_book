class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_permission
    unless current_user.is_admin?
      flash[:alert] = "Você não tem permissão, para esta ação!"
      redirect_to root_path
    end
  end
end
