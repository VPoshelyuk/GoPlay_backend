class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :pic_path
      t.string :description
      t.integer :price
      t.string :time_slots

      t.timestamps
    end
  end
end
