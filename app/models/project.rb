class Project < ActiveRecord::Base
  has_many :tags, as: :taggable
  has_many :tools
  has_many :pictures, as: :pictureable

  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy:true
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :tools, reject_if: :all_blank, allow_destroy: true
  
  attr_accessible :description, :name, :pictures_attributes, 
  	:tags_attributes, :tools_attributes
  
 
  # has_attached_file :project_picture, 
  # styles: {large: "600x600>", 
  # 			medium: "300x300>", 
  # 			thumb: "50x50>"} 
end
