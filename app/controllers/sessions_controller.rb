class SessionsController < ApplicationController
  def new
  end

  def create
    if !session[:name].blank?
      redirect_to '/'
    elsif !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name].nil?
      session[:name]
    else
      session.delete :name
    end
  end
end
