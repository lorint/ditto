class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :handle
      t.string :password
      t.string :email
      t.integer :age
      t.string :gender
      t.string :rel_type
      t.string :location
      t.integer :radius

      t.timestamps null: false
    end
  end
end
