require 'test_helper'

class BlogTest < ActiveSupport::TestCase

def test_author_is_present
	blog = Blog.new author: "Andy"
	assert blog.valid?
end

def test_post_is_invalid_when_author_is_not_present
	blog = Blog.new body: "Test"
	assert blog.invalid?
end

def test_must_have_a_title
	blog = Blog.new title: "Title"
	assert blog.invalid?

end

end
