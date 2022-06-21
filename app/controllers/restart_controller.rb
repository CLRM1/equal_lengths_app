class RestartController < ApplicationController

  def show

  end

  def restart
    if params[:restart] == 'equal'
      redirect_to '/meditations/equal_lengths/restart'
    elsif params[:restart] == 'square'
      redirect_to '/meditations/square_breathing/restart'
    elsif params[:restart] == 'senses'
      redirect_to '/meditations/three_senses/restart'
    end
  end
end
