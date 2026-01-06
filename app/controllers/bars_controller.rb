class BarsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    unless current_user.team
      redirect_to teams_select_path, alert: "Pick your team first!"
      return
    end
    
    @city = params[:city]
    
    if @city.present?
      @bars = current_user.team.bars.where(city: @city)
    end
  end
  
  # Show form to submit a bar
  def new
    @bar = Bar.new
    @teams = Team.all
  end
  
  # Create the bar
  def create
    @bar = Bar.new(bar_params)
    
    if @bar.save
      if params[:team_ids].present?
        params[:team_ids].each do |team_id|
          BarTeam.create(bar: @bar, team_id: team_id) if team_id.present?
        end
      end
      
      redirect_to root_path, notice: "Bar submitted successfully!"
    else
      @teams = Team.all
      flash.now[:alert] = @bar.errors.full_messages.join(", ")
      render :new, status: :unprocessable_entity
    end
  end
    
  private
  
  def bar_params
    params.require(:bar).permit(:name, :address, :city)
  end
end