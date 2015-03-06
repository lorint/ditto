class CreateUserPlaces < ActiveRecord::Migration
  def change
    create_table :user_places do |t|
      t.integer :user_id
      t.string :place
      t.text :desc

      t.timestamps null: false
    end
  end
end
