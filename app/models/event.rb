class Event < ApplicationRecord
    mount_uploader :event_poster, EventPosterUploader
    mount_uploader :floor_plan, FloorPlanUploader
    has_many :stalls, dependent: :destroy
    accepts_nested_attributes_for :stalls, allow_destroy: true
end
