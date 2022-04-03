class Booth < ApplicationRecord
  validates :first_name, :last_name, :email, :contact, presence: true
  # has_many :transactions
  validates :first_name, :last_name, length: { minimum: 2, maximum: 100 }
  validates :contact, length: { is: 10 }
end
