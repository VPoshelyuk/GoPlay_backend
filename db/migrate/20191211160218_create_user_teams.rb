class CreateUserTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :user_teams do |t|
      t.integer :signup_won_games
      t.integer :signup_tie_games
      t.integer :signup_lost_games
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
  end
end
