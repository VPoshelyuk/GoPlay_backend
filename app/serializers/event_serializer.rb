class EventSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :price, :description, :pretty_time, :time, :pic_path, :players_per_team, :max_number_of_teams, :users, :group_id
  end
  