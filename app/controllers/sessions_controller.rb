class SessionsController < ApplicationController

  def new
  end

  def create
	member = Member.find_by_username(params[:username])
	if member && member.authenticate(params[:password])
				session[:member_id] = user.id
				redirect_to session[:return_to] || root_path
	else
			flash.now[:error] = "Invalid email/password combination."
			render 'new'
	end
  end

  def destroy
	if signed_in?
			session[:member_id]=nil
	else
			flash[:notice]="You need to log in first"
	end
	redirect_to login_path
  end
  
end


