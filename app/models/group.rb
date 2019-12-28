class Group < ApplicationRecord
    has_one_attached :g_logo
    belongs_to :admin, :class_name => "User"
    has_many :team_groups
    has_many :teams, through: :team_groups
    has_many :events
    belongs_to :activity
    has_one_attached :image
end
