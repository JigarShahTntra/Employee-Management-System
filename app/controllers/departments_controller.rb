# frozen_string_literal: true

# department/controller
class DepartmentsController < ApplicationController
  before_action :set_department, only: %i[edit show destroy update]
  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def show; end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to root_path, notice: 'this is to create and save department'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @department.update(department_params)
      redirect_to root_path, notice: 'this is to edit and update department'
    else
      render :edit
    end
  end

  def destroy
    @department.destroy if @department.present?
    redirect_to root_path, notice: 'this is to delete department'
  end

  private

  def set_department
    @department = Department.find_by(id: params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
