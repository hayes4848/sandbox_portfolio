class ProjectPicture < ActiveRecord::Base
  belongs_to :picable, polymorphic: true
  attr_accessible :name
   has_attached_file :project_picture, 
  styles: {large: "600x600>", 
  			medium: "300x300>", 
  			thumb: "50x50>"}
end
