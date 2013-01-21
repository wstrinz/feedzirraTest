class RemoveIdFromStories < ActiveRecord::Migration
  def up
    remove_column :stories, :id
  end

  def down
    add_column :stories, :id, :integer
  end
end
