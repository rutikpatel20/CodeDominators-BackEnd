class Booking < ApplicationRecord
  validates :email, :stripe_id, presence: true
  belongs_to :stall
end
