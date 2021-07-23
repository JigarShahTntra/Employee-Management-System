class Department < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :name, format: { with: /\A[a-z]+\z/,
                             message: 'only allows small letters' }
end
