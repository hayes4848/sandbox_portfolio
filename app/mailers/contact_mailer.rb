class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

	def contact_me(contact_message)
	 
		mail(to: 'andy@andy.com', subject:"requested info")
	end
end
