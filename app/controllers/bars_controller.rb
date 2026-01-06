class BarsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    unless current_user.team
      redirect_to teams_select_path, alert: "Pick your team first!"
      return
    end
    
    # Get city user
    @city = params[:city]
    
    if @city.present?
      # Find bars in that city that support user's team
      @bars = current_user.team.bars.where(city: @city)
    end
  end
end