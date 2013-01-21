class AddForeignKeyToStories < ActiveRecord::Migration
  def change
    add_column :stories, :feedbox_id, :integer
  end
end
