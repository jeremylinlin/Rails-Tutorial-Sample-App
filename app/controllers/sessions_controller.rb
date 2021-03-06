class SessionsController < ApplicationController
	def new
		@page_title = "Sign in"
		# full_title("Sign In") This makes the test fail because "full_title" method returns a variable, which is not a method that changes the <title>
	end

	def create
		@page_title = "Sign in" # WHY???????????????????????????????????????
		user = User.find_by_email(params[:session][:email].downcase) # the email should still be valid when the user capitalizes it
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_back_or(user) # redirect to session[:return_to] or user
		else																																																																																																																		
			flash.now[:error] = "Invalid email/password combination"
			render "new"
		end
	end

	def destroy
	    sign_out
	    redirect_to root_url
   	end
end