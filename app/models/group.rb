class Group < ApplicationRecord
    has_many :team_groups
    has_many :teams, through: :team_groups
    has_many :events
    belongs_to :activity
end
