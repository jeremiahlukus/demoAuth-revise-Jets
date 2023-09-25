class Admin::DashboardController < AdminController
  def show
    @users = ::User.all.count
  end
end
