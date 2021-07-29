class SpreadsheetsController < ApplicationController
  def new
    @spreadsheet = Spreadsheet.new
  end

  def create
    return if params[:spreadsheet][:sheet].blank?

    @sheet = Spreadsheet.new(spreadsheet_params)
    if @sheet.save
      flash[:notice] = 'Thank you for your submission...'
      redirect_to users_path
    else
      flash[:error] = 'There was a problem submitting your attachment.'
      render :new
    end
  end

  private

  def spreadsheet_params
    params.require(:spreadsheet).permit(:user_id, :sheet)
  end
end
