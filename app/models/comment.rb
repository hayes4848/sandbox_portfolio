class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :author, :message
  validates :author, :message, presence:true

default_scope -> {order('created_at ASC')}
 
end
