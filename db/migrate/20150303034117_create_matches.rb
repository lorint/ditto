class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user1_id
      t.integer :user2_id
      t.integer :upcm_id
      t.boolean :user1_rslt
      t.boolean :user2_rslt

      t.timestamps null: false
    end
  end
end
