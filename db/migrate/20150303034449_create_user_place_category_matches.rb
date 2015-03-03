class CreateUserPlaceCategoryMatches < ActiveRecord::Migration
  def change
    create_table :user_place_category_matches do |t|
      t.integer :match_id
      t.integer :upc_id

      t.timestamps null: false
    end
  end
end
