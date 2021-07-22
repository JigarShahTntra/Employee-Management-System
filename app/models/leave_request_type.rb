# frozen_string_literal: true

# LeaveRequestType model
class LeaveRequestType < ApplicationRecord
  validates :leaverequest_type, presence: true
end
