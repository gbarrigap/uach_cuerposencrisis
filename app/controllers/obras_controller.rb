# frozen_string_literal: true

class ObrasController < ApplicationController

  def show
    @obra = !!current_user ? Obra.find(params[:id]) : nil
    respond_to do |format|
      format.json { render json: @obra || false }
    end
  end

end
