class Feedbox < ActiveRecord::Base
  attr_accessible :last_update, :read_index, :title, :url

  has_many :stories

  def update_feed
    @feed = Feedzirra::Feed.fetch_and_parse(url)
    @feed.entries.each do |entry|
      stories.build(summary: entry.summary, title: entry.title, url: entry.url, published: entry.published, content: entry.content)
    end
    self.last_update = Time.now
    self.save
  end

  def current_story
    stories[read_index]
  end

  def next_article
    unless stories[read_index+1].nil?
      self.read_index+=1
      self.save
    end
  end

  def prev_article
    unless stories[read_index-1].nil? || read_index == 0
      self.read_index-=1
      self.save
    end
  end
end
