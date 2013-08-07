class SessionsController < ApplicationController
	def new
	end

	def create
		if User.find_by_name(params[:name])
			session[:name] = params[:name]
			redirect_to reviews_url, notice: "successfully signed in as #{session[:name]}"
		else
			redirect_to sign_in_url, notice: "invalid username"
		end
	end

	def destroy
		reset_session
		redirect_to sign_in_url, notice: "successfully signed out"
	end
end