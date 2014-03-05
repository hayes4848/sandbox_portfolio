class User < ActiveRecord::Base
  has_secure_password
  has_many :tags, as: :taggable
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :profile_picture
  has_attached_file :profile_picture, 
  styles: {large: "600x600>", 
  			medium: "300x300>", 
  			thumb: "50x50>"}, 
  		:default_url => "/assets/default.png"
 # validates :email, :first_name, :last_name, :password, :password_confirmation, presence:true, on: :create
  
  after_create :send_welcome_email

private

	def send_welcome_email
	UserMailer.welcome(self).deliver
	end
end
