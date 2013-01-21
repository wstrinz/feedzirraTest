class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :summary
      t.string :url
      t.string :id

      t.timestamps
    end
  end
end
