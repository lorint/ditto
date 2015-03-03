class CreateUserPlaces < ActiveRecord::Migration
  def change
    create_table :user_places do |t|
      t.integer :user_id
      t.integer :place_id
      t.text :desc
      t.integer :rating

      t.timestamps null: false
    end
  end
end
