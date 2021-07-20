class Department < ApplicationRecord
   validates :name, presence: true,uniqueness: true
   validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: 'only allows letters' }
end
