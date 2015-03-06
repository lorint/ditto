class CreateUserPlaceCategories < ActiveRecord::Migration
  def change
    create_table :user_place_categories do |t|
      t.integer :userplace_id
      t.string :category

      t.timestamps null: false
    end
  end
end
