class CreateUserPlaceCategories < ActiveRecord::Migration
  def change
    create_table :user_place_categories do |t|
      t.integer :userplace_id
      t.integer :placecat_id

      t.timestamps null: false
    end
  end
end
