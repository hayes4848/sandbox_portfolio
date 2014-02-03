class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :author, :message
end
