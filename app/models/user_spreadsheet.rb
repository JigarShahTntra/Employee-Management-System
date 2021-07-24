class UserSpreadsheet < ApplicationRecord
  belongs_to :user
  belongs_to :spreadsheet
end
