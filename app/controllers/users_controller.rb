class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
    return if @user
    flash[:danger] = t "users.nil_user"
    redirect_to root_path
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = t "users.create_success"
      redirect_to @user
    else
      flash.now[:danger] = t "users.create_fail"
      render :new
    end
  end

  private
  def user_params
    params.require(:user)
          .permit :name, :email, :password, :password_confirmation
  end
end
