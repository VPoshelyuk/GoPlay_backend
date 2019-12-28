class TeamSerializer
    include FastJsonapi::ObjectSerializer
    set_type :team
    has_many :groups, polymorphic: true
    attributes :id, :name, :location, :number_of_members, :description, :won_games, :tie_games, :lost_games, :admin, :activity_id, :users, :groups

    attribute :logo do |object| 
      Rails.application.routes.url_helpers.rails_blob_url(object.logo) if object.logo.attached?
    end
  end
  