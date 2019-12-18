class GroupSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :location, :logo_path, :description, :activity, :teams
  end
  