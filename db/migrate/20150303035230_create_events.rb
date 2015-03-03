class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :place_id
      t.string :name
      t.text :desc

      t.timestamps null: false
    end
  end
end
