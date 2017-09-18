class AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_permission

  def list_users
    @users = User.where.not(id: current_user.id)
  end

  def change_admin
    User.find(params[:id]).change_admin
  end
end
