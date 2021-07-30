# frozen_string_literal: true

# this is for CreateFeedbacks table
class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.text :description

      t.timestamps
    end
  end
end
