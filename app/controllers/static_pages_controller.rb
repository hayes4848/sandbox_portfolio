class StaticPagesController < ApplicationController
  def Home
  	@blogs = Blog.last
  end

  def About
  	@blogs = Blog.last
  end
end
