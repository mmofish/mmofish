#controllers/admin/base_controller.rb

class Admin::BaseController < ApplicationController
  
layout 'dashboard'
  
before_filter :authenticate_user!


end