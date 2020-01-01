class EventSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :price, :description, :pretty_time, :time, :address, :pic_path, :players_per_team, :max_number_of_teams, :users, :teams, :group_id
  end
  