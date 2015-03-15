class CreatePlaceCategories < ActiveRecord::Migration
  def change
    create_table :place_categories do |t|
      t.references :place, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :place_categories, :places
    add_foreign_key :place_categories, :categories
  end
end
