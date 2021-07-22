# frozen_string_literal: true

# migrate file
class CreateLeavetypes < ActiveRecord::Migration[6.1]
  def change
    create_table :leavetypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
