class Picture < ActiveRecord::Base
  belongs_to :pictureable, polymorphic: true
  attr_accessible :title, :image

  has_attached_file :image, 
  styles: {large: "600x600>", 
  			medium: "300x300>", 
  			thumb: "50x50>"}, 
  		:default_url => "/assets/default.png"

end
