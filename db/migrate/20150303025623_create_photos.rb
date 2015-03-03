class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :img_id
      t.string :img_type
      t.string :url

      t.timestamps null: false
    end
  end
end
