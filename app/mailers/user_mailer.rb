class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome(user)
  	@user = User.find(user)
  	mail(to: @user.email, subject: "hey #{user.first_name}, Welcome to my awesome site!")
  end


end
