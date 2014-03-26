class SessionsController < ApplicationController

  def new
  end

  def create
    #user = User.find_by(email: params[:session][:email].downcase)  # form_for
    #if user && user.authenticate(params[:session][:password])      # form_for
    user = User.find_by(email: params[:email].downcase)   # form_tag
    if user && user.authenticate(params[:password])       # form_tag
      sign_in user
      redirect_to user, notice: "Logged in!"
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url, notice: "Logged out!"
  end
end
