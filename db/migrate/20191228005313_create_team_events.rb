class CreateTeamEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :team_events do |t|
      t.integer :team_id
      t.integer :event_id

      t.timestamps
    end
  end
end
