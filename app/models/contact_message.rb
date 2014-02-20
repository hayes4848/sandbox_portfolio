class ContactMessage 
  attr_accessor :body, :email, :name, :subject, :topic
  # validates :body, :email, presence: true

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
	  def initialize(attributes = {})
		attributes.each do |name, value|
			send("#{name}=", value)
		end
	end


	def persisted?
		false
	end
end
