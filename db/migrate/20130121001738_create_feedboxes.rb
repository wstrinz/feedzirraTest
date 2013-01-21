class CreateFeedboxes < ActiveRecord::Migration
  def change
    create_table :feedboxes do |t|
      t.string :title
      t.string :url
      t.datetime :last_update
      t.integer :read_index

      t.timestamps
    end
  end
end
