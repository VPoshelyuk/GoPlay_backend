class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :first_name, :last_name, :profile_pic, :email, :phone_number, :location, :birthday, :gender, :bio, :won_games, :tie_games, :lost_games, :admin, :activities, :teams
end
