#controllers/admin/base_controller.rb

class Admin::BaseController < ApplicationController
  
layout 'admin'
  
before_filter :authenticate_user!


end