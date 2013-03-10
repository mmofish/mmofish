class Admin::SettingsController < Admin::DashboardController
  def index
      @users = User.all
        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @game_classes }
          format.js # index.js.erb
        end
  end
end