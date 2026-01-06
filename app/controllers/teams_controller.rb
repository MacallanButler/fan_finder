class TeamsController < ApplicationController
  before_action :authenticate_user!
  
  # Show team selection
  def select
    @teams = Team.all
  end
  
  # Save user's team choice
  def update
    current_user.update(team_id: params[:team_id])
    redirect_to root_path, notice: "Team saved!"
  end
end