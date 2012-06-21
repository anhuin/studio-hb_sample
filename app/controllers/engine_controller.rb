class EngineController < ApplicationController

  def show
    @engine = engine.find(params[:id])
  end

  def show_picture
    send_data engine.find(params[:id]).picture, :type => 'image/jpg'
  end

end
