class User < ApplicationRecord
  validates :email, presence: true, format: { with: /\A(.+)@(.+)\z/, message: 'Email invalid' }, uniqueness: { case_sensitive: false }
  validates :employee_code, presence: true, uniqueness: true, numericality: { only_integer: true }
  def self.import(file)
      spreadsheet = open_spreadsheet(file)
      header = spreadsheet.row(1)
      (2..spreadsheet.last_row).map do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        User.create! row.to_hash
        # user = User.find_by_id(row["id"]) || User.new
        # user.attributes = row.to_hash.slice(*accessible_attributes)
        # user.save!
      end
    end
  
    def self.open_spreadsheet(file)
      case File.extname(file.original_filename)
      when ".csv" then CSV.new(file.path)
      when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Roo::Excelx.new(file.path)
      else raise "Unknown file type: #{file.original_filename}"
      end
    end
end
