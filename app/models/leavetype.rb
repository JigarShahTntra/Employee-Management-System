# frozen_string_literal: true

# leavtype model
class Leavetype < ApplicationRecord
  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
                             message: 'only allows small-letters' }
end
