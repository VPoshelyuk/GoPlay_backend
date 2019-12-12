class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :pic_path
      t.integer :price
      t.integer :group_id

      t.timestamps
    end
  end
end
