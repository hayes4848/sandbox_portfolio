class SessionsController < ApplicationController

	def new
		
	end

	def create
		#this is where our password authentication code will go.  
		 user = User.find_by_email(params[:email])
			if user 
		  #compare the password they put in to the users password (authenticate)
		  		if user.authenticate(params[:password])
		  #if it matches, do something

		  #sign them in, start a session. 
        session[:user_id] = user.id
		  #redirect home, welcome statement. 
          redirect_to root_path, notice: "Welcome #{user.first_name}, you have signed in successfully. "
		  #otherwise, send them back, saying bad password.
		  		else 
            flash.now.alert = "listen dumb-dumb.. wrong password"
		  			render :new  
          end
		#if there is not a user, send them back with invalid email.
			else 
			render :new 
		end
	end

	def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out successfully"
  end
end
