#controllers/admin/settings/users_controller.rb

class Admin::Settings::UsersController < Admin::DashboardController

  def index
 
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
    respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @game_classes }
          format.js # index.js.erb
        end
  end
  
  def show
    @user = User.find(params[:id])
    respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @game_classes }
          format.js # index.js.erb
        end
  end
  
  def update
  end
  
  def destroy
  end
  
end