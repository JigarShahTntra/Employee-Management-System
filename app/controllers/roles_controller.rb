class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to @role
    else
      render :new
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])

    if @role.update(role_params)
      redirect_to @role
    else
      render :edit
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy

    redirect_to root_path
  end

  private

  def role_params
    params.require(:role).permit(:name)
  end
end
