#controllers/home_controller.rb

class HomeController < ApplicationController
  def index
     @users = User.all
  end
end
