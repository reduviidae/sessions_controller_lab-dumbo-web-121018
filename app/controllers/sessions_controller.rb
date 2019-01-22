class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || ""
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to sessions_new_url
    end
  end

  def destroy
    session.delete :name
    redirect_to sessions_new_url
  end
end
