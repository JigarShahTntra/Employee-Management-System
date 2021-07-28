# frozen_string_literal: true

# ragularizations model
class RegularizationsController < ApplicationController
  before_action :set_regularization, only: %i[show edit update destroy]
  def index
    @regularizations = Regularization.all
  end

  def show; end

  def new
    @regularization = Regularization.new
  end

  def create
    @regularization = Regularization.new(regularization_params)
    if @regularization.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @regularization.update(regularization_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @regularization.destroy
    redirect_to root_path
  end

  private

  def set_regularization
    @regularization = Regularization.find_by(id: params[:id])
  end

  def regularization_params
    params.require(:regularization).permit(:reason, :start_hour, :end_hour)
  end
end
