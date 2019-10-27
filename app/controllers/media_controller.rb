class MediaController < ApplicationController

  def datos
    data = !!current_user ? '"/assets/violencia_3.mp4"' : false
    respond_to do |format|
      format.json { render json: data }
    end
  end

end
