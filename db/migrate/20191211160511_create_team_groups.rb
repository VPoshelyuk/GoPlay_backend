class CreateTeamGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :team_groups do |t|
      t.integer :group_id
      t.integer :team_id

      t.timestamps
    end
  end
end
