class Story < ActiveRecord::Base
  attr_accessible :summary, :title, :url, :published, :content

  belongs_to :feedbox
end
