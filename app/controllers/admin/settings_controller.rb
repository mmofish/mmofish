class Admin::SettingsController < Admin::DashboardController
  def index
      @users = User.all
        respond_to do |format|
          format.html # index.html.erb
       end
  end
end