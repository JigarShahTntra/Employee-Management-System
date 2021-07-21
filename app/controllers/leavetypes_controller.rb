class LeavetypesController < ApplicationController
  before_action :set_leave, only: %i[show edit update destroy]
  def index
    @leavetypes = Leavetype.all
  end

  def show
  end

  def new
    @leavetype = Leavetype.new
  end

  def create
    @leavetype = Leavetype.new(leave_params)

    if @leavetype.save
      redirect_to @leavetype
    else
      render :new
    end
  end

  def edit
  end

  def update
   if @leavetype.update(leave_params)
      redirect_to @leavetype
    else
      render :edit
    end
  end

  def destroy
    @leavetype.destroy
    redirect_to root_path
  end

  private


  def set_leave
    @leavetype = Leavetype.find_by(id: params[:id])
  end

  def leave_params
    params.require(:leavetype).permit(:name)
  end
end
