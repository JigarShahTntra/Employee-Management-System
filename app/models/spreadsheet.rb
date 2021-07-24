class Spreadsheet < ApplicationRecord
  belongs_to :user
  has_many :users, through: :user_spreadsheets
  has_one_attached :sheet
end
