# frozen_string_literal: true

# this is for FeedbacksController
class FeedbacksController < ApplicationController
  before_action :set_feedback, only: %i[edit show destroy update]

  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def show; end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.save
      redirect_to feedbacks_path, notice: 'this is creating feedback'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @feedback.update(feedback_params)
      redirect_to feedbacks_path, notice: 'this is updating feedback'
    else
      render :edit
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy if @feedback.present?
    redirect_to feedbacks_path
  end

  private

  def set_feedback
    @feedback = Feedback.find_by(id: params[:id])
  end

  def feedback_params
    params.require(:feedback).permit(:description)
  end
end
