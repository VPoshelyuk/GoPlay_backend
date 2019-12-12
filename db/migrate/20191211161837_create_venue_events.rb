class CreateVenueEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :venue_events do |t|
      t.integer :venue_id
      t.integer :event_id

      t.timestamps
    end
  end
end
