# frozen_string_literal: true

# Feedback model
class Feedback < ApplicationRecord
  validates :description, presence: true
end
