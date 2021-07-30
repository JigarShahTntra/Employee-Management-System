# frozen_string_literal: true

# This is for Notice model
class Notice < ApplicationRecord
  validates :title, :description, presence: true
end
