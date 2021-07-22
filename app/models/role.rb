# frozen_string_literal: true

# class/role/model
class Role < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :name, format: { with: /\A[a-z]+\z/, message: 'only allows small letters' }
end
