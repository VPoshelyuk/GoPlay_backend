class Event < ApplicationRecord
    has_one_attached :e_logo
    has_one :group
    has_many :user_events
    has_many :users, through: :user_events
    has_many :venue_events
    has_many :venues, through: :venue_events
    has_many :team_events
    has_many :teams, through: :team_events
end
