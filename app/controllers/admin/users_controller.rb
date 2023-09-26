class Admin::UsersController < AdminController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :switch]

  def index
    @users = User.all
  end

  # GET /accounts/1
  def show
    @tokens = @user.api_tokens
  end

  def create
  end

  def update
  end

  # GET /accounts/new
  def new
    @user= User.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # DELETE /accounts/1
  def delete
    @user.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user= User.find(params[:id])
  end
end
