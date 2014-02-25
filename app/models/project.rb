class Project < ActiveRecord::Base
  attr_accessible :description, :name, :project_picture
  has_many :project_picture, as: :picable
  has_attached_file :project_picture, 
  styles: {large: "600x600>", 
  			medium: "300x300>", 
  			thumb: "50x50>"} 
end
