class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil?
      redirect_to '/sessions/new'
    else
      if params[:name].empty?
        redirect_to '/sessions/new'
      else
        session[:name] = params[:name] 
        redirect_to '/'
      end
    end
  end

  def destroy
    session.delete :name
  end


end
