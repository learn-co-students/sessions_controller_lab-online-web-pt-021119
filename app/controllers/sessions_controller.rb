class SessionsController < ApplicationController

	def new

	end

	def create
		if !params[:name] || params[:name].empty?
			redirect_to login_path
		else
			params.permit
			session[:name] = params[:name]
			redirect_to '/'
		end
	end

	def destroy
		session.destroy
		redirect_to '/'
	end

end