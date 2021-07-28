class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @user.sheet.attach.call(params[:sheet])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy if @user.present?

    redirect_to root_path
  end

  def import
    SpreadsheetJob.perform_later
    redirect_to users_path, notice: 'Users Added Successfully'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :employee_code, :status, :sheet)
  end
end
