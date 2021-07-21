class LeavetypesController < ApplicationController
  def index
    @leavetypes = Leavetype.all
  end

  def show
    @leavetype = Leavetype.find(params[:id])
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
    @leavetype = Leavetype.find(params[:id])
  end

  def update
    @leavetype = Leavetype.find(params[:id])

    if @leavetype.update(leave_params)
      redirect_to @leavetype
    else
      render :edit
    end
  end

  def destroy
    @leavetype = Leavetype.find(params[:id])
    @leavetype.destroy

    redirect_to root_path
  end

  private

  def leave_params
    params.require(:leavetype).permit(:name)
  end
end
