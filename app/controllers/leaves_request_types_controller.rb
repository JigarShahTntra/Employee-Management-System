class LeavesRequestTypesController < ApplicationController
  before_action :set_leave_request_type, only: %i[edit show destroy update]

  def index
    @leaves_request_types = LeaveRequestType.all
  end

  def new
    @leave_request_type = LeaveRequestType.new
  end

  def show; end

  def create
    @leave_request_type = LeaveRequestType.new(leave_request_type_params)
    if @leave_request_type.save
      redirect_to leaves_request_types_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @leave_request_type = LeaveRequestType.find(params[:id])

    if @leave_request_type.update(leave_request_type_params)
      redirect_to leaves_request_types_path
    else
      render :edit
    end
  end

  def destroy
    @leave_request_type.destroy if @leave_request_type.present?
    redirect_to root_path
  end

  private

  def set_leave_request_type
    @leave_request_type = LeaveRequestType.find_by(id: params[:id])
  end

  def leave_request_type_params
    params.require(:leave_request_type).permit(:leaverequest_type)
  end
end
