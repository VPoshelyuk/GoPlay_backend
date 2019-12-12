class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.string :location
      t.string :birthday
      t.string :gender
      t.string :bio
      t.integer :won_games
      t.integer :tie_games
      t.integer :lost_games
      t.boolean :admin
      t.integer :team_id
      t.string :password_digest

      t.timestamps
    end
  end
end
