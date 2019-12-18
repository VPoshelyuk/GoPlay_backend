class VenueEvent < ApplicationRecord
    belongs_to :venue
    belongs_to :event
end
