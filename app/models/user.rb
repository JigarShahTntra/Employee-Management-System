class User < ApplicationRecord
  validates :email, presence: true, format: { with: /\A(.+)@(.+)\z/, message: 'Email invalid' },
                    uniqueness: { case_sensitive: false }
  validates :employee_code, presence: true, uniqueness: true, numericality: { only_integer: true }
  has_many :spreadsheets
  has_many :spreadsheets, through: :user_spreadsheets

  def self.import(sheet)
    error_records = []
    spreadsheet = open_spreadsheet(sheet)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).map do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      u = User.create row.to_hash
      error_records << { name: u&.email, phone: u&.employee_code, errors: u.errors.full_messages } if u.errors.any?
    end
    ErrorMailer.error_email(error_records).deliver_now
    # user = User.find_or_initialize_by(row['employee_code'])
    # user.touch(*accessible_attributes)
    # user.save
  end

  def self.open_spreadsheet(sheet)
    case File.extname(sheet.original_filename)
    when '.csv' then Roo::CSV.new(sheet.path)
    when '.xls' then Roo::Excel.new(sheet.path, nil, :ignore)
    when '.xlsx' then Roo::Excelx.new(sheet.path)
    else raise "Unknown file type: #{sheet.original_filename}"
    end
  end
end
