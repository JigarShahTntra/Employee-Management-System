# frozen_string_literal: true

# Regularization model
class Regularization < ApplicationRecord
  validates :reason, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows small-letters' }
  validates :start_hour, presence: true, format: { with: /([01][0-9]|2[0-3]):[0-5][0-9]/, message: 'proper formate needed' }
  validates :end_hour, presence: true, format: { with: /([01][0-9]|2[0-3]):[0-5][0-9]/, message: 'proper formate needed' }
end
