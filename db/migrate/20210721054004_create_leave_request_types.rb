# frozen_string_literal: true

# CreateLeaveRequestTypes and table
class CreateLeaveRequestTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :leave_request_types do |t|
      t.string :leaverequest_type
      t.timestamps
    end
  end
end
