class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fb_id
      t.string :name
      t.string :gender
      t.string :email
      t.integer :age
      t.string :rel_type
      t.string :location
      t.integer :radius

      t.timestamps null: false
    end
  end
end
