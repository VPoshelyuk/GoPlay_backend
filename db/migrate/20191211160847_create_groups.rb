class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :location
      t.string :logo_path
      t.string :description
      t.integer :admin_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
