class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :logo_path
      t.integer :number_of_members
      t.integer :number_of_teams
    end
  end
end
