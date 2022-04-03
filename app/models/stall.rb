class Stall < ApplicationRecord

  belongs_to :event
  has_one :booking
end
