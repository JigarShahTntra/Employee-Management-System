# frozen_string_literal: true

# This is for noticescontroller
class NoticesController < ApplicationController
  before_action :set_notice, only: %i[edit show destroy update]

  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def show; end

  def create
    @notice = Notice.new(notice_params)
    if @notice.save
      redirect_to notices_path, notice: 'this is for creating notice'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @notice.update(notice_params)
      redirect_to notices_path, notice: 'this is for updatting notice'
    else
      render :edit
    end
  end

  def destroy
    @notice.destroy if @notice.present?
    redirect_to root_path, notice: 'this is for destroying notice'
  end

  private

  def set_notice
    @notice = Notice.find_by(id: params[:id])
  end

  def notice_params
    params.require(:notice).permit(:title, :description)
  end
end
