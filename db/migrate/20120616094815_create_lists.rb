class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.integer :category_id

      t.string :name
      t.text :compiled

      t.string :cover, :limit => 64
      t.string :salt, :limit => 64

      t.datetime :created_at
    end
    add_index :lists, :user_id
    add_index :lists, :category_id
  end
end
