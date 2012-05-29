class SessionsController < ApplicationController
  def new
  end

  def create 
	user = login(params[:email], params[:password])
	if user 
		redirect_back_or_to codes_path, :notice => "Logged in!"
	else
		flash.new.alert = "Email or password was invalid"
		render :new
	end
  end 

  def destroy
	logout
	redirect_to codes_path, :notice => "Logged out!"
  end	

end
