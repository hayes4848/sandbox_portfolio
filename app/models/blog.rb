class Blog < ActiveRecord::Base
  attr_accessible :author, :body, :featured, :published_at, :title

has_many :comments
end
