class Team < ApplicationRecord
    has_one_attached :logo
    belongs_to :admin, :class_name => "User"
    has_many :user_teams
    has_many :users, through: :user_teams
    has_many :team_groups
    has_many :groups, through: :team_groups
    has_many :team_events
    has_many :events, through: :team_events
end
