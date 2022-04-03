class Event < ApplicationRecord
  mount_uploader :event_poster, EventPosterUploader
  mount_uploader :floor_plan, FloorPlanUploader
  has_many :stalls, dependent: :destroy
  accepts_nested_attributes_for :stalls, allow_destroy: true
  validates :event_name, :organizer_name, :start_date, :end_date, :mobile_no, :city, :total_stall, :event_poster, :floor_plan, :description_of_event, :terms_condition, :venue, :email, :start_time, :end_time, :zip_code, presence: true
  validates :email, uniqueness: true
  require "date"
  validates :description_of_event, length: { minimum: 10, maximum: 300 }
  validates :mobile_no, length: { is: 10 }
  validates :start_date, :end_date, comparison: { greater_than: Date.current }
end
