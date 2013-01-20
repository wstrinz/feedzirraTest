class ViewfeedController < ApplicationController
  def all
    feed = Feedzirra::Feed.fetch_and_parse("http://feeds.feedburner.com/PaulDixExplainsNothing")
    @ftitle = feed.title
    entry = feed.entries.first
    @etitle = entry.title
    @econtent = entry.content
  end

  def refresh
  end

  def add
  end
end
