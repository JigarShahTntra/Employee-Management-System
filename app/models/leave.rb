# frozen_string_literal: true

# leave model
class Leave < ApplicationRecord
  belongs_to :leavetype
  validate :end_after_start
  validates :name, :startdate, :enddate, :reason, :notify, presence: true

  private

  def end_after_start
    return if enddate.blank? || startdate.blank?

    errors.add(:enddate, 'must be after the start date') if enddate < startdate
  end
end
