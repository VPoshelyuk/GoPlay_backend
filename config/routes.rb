Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_events
      resources :venue_events
      resources :team_events
      resources :venues
      resources :events
      resources :user_activities
      resources :activities
      resources :groups
      resources :team_groups
      resources :user_teams
      resources :teams
      resources :users
      post "/signup", to: "users#create"
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
      post "/vacant_teams", to: "teams#vacant_teams"
      post "/my_teams", to: "teams#my_teams"
      post "/my_groups", to: "groups#my_groups"
      post "/my_events", to: "events#my_events"
      post "/available_events", to: "events#available_events"
      post "/past_events", to: "events#past_events"
      post "/status_check", to: "user_events#status_check"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
