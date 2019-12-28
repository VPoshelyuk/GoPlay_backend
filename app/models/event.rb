class Event < ApplicationRecord
    has_one :group
    has_many :venue_events
    has_many :venues, through: :venue_events
    has_many :team_events
    has_many :teams, through: :team_events
end
