class UserController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.where(user_id: current_user.id).page(params[:page]).per(8)
  end

  def new
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to :root
  end

  private
  def update_params
    params.require(:user).permit(:username, :group, :profile, :work, :avatar)
  end
end
