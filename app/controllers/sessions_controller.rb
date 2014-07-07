class SessionsController < ApplicationController

  def new
    #go to login form
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to profiles_path, notice: "signed in as #{user.name}"

    else
      redirect_to log_in_path, alert: 'log-in failed'
    end
  end

def destroy
  session[:user_id] = nil
  redirect_to users_path, notice: "Logged Out"
end



  end