# frozen_string_literal: true

# LeaveRequestType model
class LeaveRequestType < ApplicationRecord
  validates :leaverequest_type, presence: true
  validates :leaverequest_type, format: { with: /\A[a-z]+\z/,
                                          message: 'only allows small letters' }
end
