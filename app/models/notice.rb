# frozen_string_literal: true

# This is for Notice model
class Notice < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
end
