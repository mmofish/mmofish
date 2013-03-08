#controllers/admin/users_controller.rb

class UsersController < ApplicationController
  before_filter :authenticate_user!
  def index
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
