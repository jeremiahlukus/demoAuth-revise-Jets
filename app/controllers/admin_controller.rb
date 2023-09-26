class AdminController < ReviseAuthController
  layout "admin_application"
  before_action :authenticate_admin

  def authenticate_admin
    redirect_to "/", alert: "Not authorized." unless current_user&.admin?
  end
end