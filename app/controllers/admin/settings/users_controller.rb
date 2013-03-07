#controllers/admin/settings/users_controller.rb

class Admin::Settings::UsersController < Admin::SettingsController
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