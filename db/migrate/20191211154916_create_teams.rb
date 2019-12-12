class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.integer :number_of_members
      t.string :logo_path
      t.string :description
      t.integer :won_games
      t.integer :tie_games
      t.integer :lost_games
      t.integer :admin_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
