# frozen_string_literal: true

class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to root_path
    else
      respond_to do |format|
        format.json { render json: false }
      end
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
