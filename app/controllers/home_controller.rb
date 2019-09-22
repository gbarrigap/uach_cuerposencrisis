# frozen_string_literal: true

class HomeController < ApplicationController

  def landing
    @user = current_user || User.new
  end

end
