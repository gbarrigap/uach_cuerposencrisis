# frozen_string_literal: true

class ConceptosController < ApplicationController

  def show
    concepto = !!current_user ? Concepto.find(params[:id]) : false
    @obras = !!concepto ? concepto.capsulas.map{ |c| c.obra } : false
    respond_to do |format|
      format.json { render json: @obras }
    end
  end

end
