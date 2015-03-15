class CreateUserPlaces < ActiveRecord::Migration
  def change
    create_table :user_places do |t|
      t.references :user, index: true
      t.references :place, index: true
      

      t.timestamps null: false
    end
    add_foreign_key :user_places, :places
    add_foreign_key :user_places, :users
  end
end
