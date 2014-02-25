class Blog < ActiveRecord::Base
  attr_accessible :author, :body, :featured, :published_at, :title

has_many :comments
has_many :tags, as: :taggable

validates :author, :title, :body, presence:true
#validates :title, length:{in: 6..72}

end
