class User < ApplicationRecord
    validates :username, uniqueness: true
    validates_presence_of :password, :on => :create
    has_secure_password
    has_many :user_teams
    has_many :teams, through: :user_teams
    has_one :administered_team, :class_name => "Team", :foreign_key => "admin_id"
    has_many :user_activities
    has_many :activities, through: :user_activities
end
