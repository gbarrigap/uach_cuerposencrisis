# frozen_string_literal: true

class HomeController < ApplicationController

  def landing
    @user = current_user || User.new
    @obras = Obra.all
    @conceptos = Concepto.all
    @coreografos = Coreografo.all
  end

end
