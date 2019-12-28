class GroupSerializer
    include FastJsonapi::ObjectSerializer
    set_type :group
    attributes :id, :name, :location, :description, :logo_path, :activity, :teams, :admin_id
  end
  