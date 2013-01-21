class AddStuffToStory < ActiveRecord::Migration
  def change
    add_column :stories, :content, :text
    add_column :stories, :published, :time
  end
end
