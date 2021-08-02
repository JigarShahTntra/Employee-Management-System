# frozen_string_literal: true

# Leave controller
class LeavesController < ApplicationController
  before_action :set_leave, only: %i[show edit update destroy]

  def index
    @leaves = Leave.all
  end

  def show; end

  def new
    @leave = Leave.new
  end

  def create
    @leave = Leave.new(leave_params)
    if @leave.save
      redirect_to @leave, notice: 'created new leave'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @leave.update(leave_params)
      redirect_to @leave, notice: 'update leave'
    else
      render :edit
    end
  end

  def destroy
    @leave.destroy
    redirect_to leaves_path, notice: 'destory leave'
  end

  private

  def set_leave
    @leave = Leave.find_by(id: params[:id])
  end

  def leave_params
    params.require(:leave).permit(:name, :leavetype_id, :startdate, :enddate, :reason, :notify)
  end
end
