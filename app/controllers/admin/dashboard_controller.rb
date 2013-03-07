#controllers/admin/dashboard_controller.rb

class Admin::DashboardController < Admin::BaseController
layout 'dashboard'
  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end
end