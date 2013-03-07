#controllers/admin/users_controller.rb

class Admin::DashboardController < Admin::BaseController

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def update
  end
  
  def destroy
  end
  
end