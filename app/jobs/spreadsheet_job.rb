class SpreadsheetJob < ApplicationJob
  queue_as :default

  def perform(*args)
    User.import(params[:sheet])
    sleep 2
  end
end
