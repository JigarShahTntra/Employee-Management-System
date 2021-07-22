class RolesController < ApplicationController
  before_action :set_role, only: %i[edit show destroy update]

  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def show; end

  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to @role
    else
      render :new
    end
  end

  def edit; end

  def update
    if @role.update(role_params)
      redirect_to @role
    else
      render :edit
    end
  end

  def destroy
    @role.destroy if @role.present?
    redirect_to root_path
  end

  private

  def set_role
    @role = Role.find_by(id: params[:id])
  end

  def role_params
    params.require(:role).permit(:name)
  end
end
