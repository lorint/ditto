class CreateMatchEvents < ActiveRecord::Migration
  def change
    create_table :match_events do |t|
      t.integer :match_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
