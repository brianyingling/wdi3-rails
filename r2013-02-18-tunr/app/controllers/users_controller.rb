class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new,:create]
  before_filter :check_if_admin, :only => [:index,:destroy]


  def index
    @users = User.order(:name)
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path
    else
      render  :new
    end
  end
  def edit
    @user = @auth
    render :new
  end
  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      redirect_to root_path
    else
      # have to render because redirect would lose instance variables.
      render :new
    end
  end
  def destroy
    User.delete(params[:id])
    redirect_to users_path
  end


end
