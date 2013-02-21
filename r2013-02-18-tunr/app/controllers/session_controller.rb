class SessionController < ApplicationController
  def new
  end
  def create
    # where returns an array of things, find the first User
    user = User.where(:name=>params[:username]).first

    ## if the user is present and if the user is authenticated based on the inputted
    ## password, process.
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      # Lasts just one time, after that -- it's gone.
      flash[:notice] =  "Incorrect Login. Please try again."
      ### Return to login form, user wasn't authenticated
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_path
  end
end