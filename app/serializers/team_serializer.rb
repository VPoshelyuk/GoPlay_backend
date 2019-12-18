class TeamSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :location, :number_of_members, :logo_path, :description, :won_games, :tie_games, :lost_games, :admin, :activity_id, :users
  end
  