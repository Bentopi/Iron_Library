class SessionsController < ApplicationController

  def new
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password])
      session[:username] = username
      redirect_to root_path, notice: "Login Succesful"
    else
      flash.now[:notice] = "You either don't exist or entered something wrong"
      render :new
    end

  end

end
