class SpreadsheetJob < ApplicationJob
  queue_as :default

  def perform(*)
    User.import(params[:sheet])
    sleep 2
  end
end
