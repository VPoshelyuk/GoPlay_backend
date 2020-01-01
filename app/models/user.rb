class User < ApplicationRecord
    has_one_attached :profile_pic
    validates :username, uniqueness: true
    validates_presence_of :password, :on => :create
    has_secure_password
    has_many :user_teams
    has_many :teams, through: :user_teams
    has_many :user_events
    has_many :events, through: :user_events
    has_one :administered_team, :class_name => "Team", :foreign_key => "admin_id"
    has_one :administered_group, :class_name => "Group", :foreign_key => "admin_id"
    has_many :user_activities
    has_many :activities, through: :user_activities
end
 