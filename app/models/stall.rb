class Stall < ApplicationRecord
  validates :stall_type, :stall_size, :stall_price, presence: true
  belongs_to :event
  has_one :booking
end
