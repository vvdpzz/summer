class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :rank

      t.datetime :created_at
    end
  end
end
