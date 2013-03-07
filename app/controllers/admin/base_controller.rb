#controllers/admin/base_controller.rb

class Admin::BaseController < ApplicationController
before_filter :authenticate_user!


end