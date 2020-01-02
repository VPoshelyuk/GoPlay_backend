class UserSerializer
  include FastJsonapi::ObjectSerializer
  set_type :user
  attributes :id, :username, :first_name, :last_name, :profile_pic_path, :email, :phone_number, :location, :birthday, :gender, :bio, :won_games, :tie_games, :lost_games, :admin, :activities, :teams, :events

  # attribute :profile_pic do |object| 
  #   Rails.application.routes.url_helpers.rails_blob_url(object.profile_pic) if object.profile_pic.attached?
  # end
end
