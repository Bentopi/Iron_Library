class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Login Succesful"
    else
      flash.now[:notice] = "You either don't exist or entered something wrong"
      render :new
    end
  end

  def delete
    session.delete :user_id
    redirect_to root_path, notice: "Succesfully signed out."
  end

end
