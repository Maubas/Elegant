class CreateGlamours < ActiveRecord::Migration
  def change
    create_table :glamours do |t|
      t.integer :user_id
      t.string :character_name
      t.string :character_world
      t.string :character_class
      t.string :head
      t.string :chest
      t.string :arms
      t.string :legs
      t.string :feet
      t.string :comment

      t.timestamps null: false
    end
  end
end
