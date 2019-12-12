class User < ApplicationRecord
    validates :username, uniqueness: true
    has_secure_password
    validates_presence_of :password, :on => :create
    has_many :user_favorites
    has_many :events, through: :user_favorites
end
