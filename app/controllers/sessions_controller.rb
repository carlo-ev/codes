class SessionsController < ApplicationController
  def new
  end

  def create 
	user = login(params[:username],params[:password])
	if user 
		redirect_back_or_to codes_path, :notice => "Logged in!"
	else
		render :new
	end
  end 

  def destroy
	logout
	redirect_to codes_path, :notice => "Logged out!"
  end	

end
