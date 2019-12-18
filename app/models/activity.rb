class Activity < ApplicationRecord
    has_many :user_activities
    has_many :users, through: :user_activities
    has_many :teams
    has_many :groups
    has_many :venue_activities
    has_many :venues, through: :venue_activities
end
