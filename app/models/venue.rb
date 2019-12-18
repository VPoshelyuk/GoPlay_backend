class Venue < ApplicationRecord
    has_many :venue_activities
    has_many :activities, through: :venue_activities
    has_many :venue_events
    has_many :events, through: :venue_events
end
