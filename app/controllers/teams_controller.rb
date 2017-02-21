class TeamsController < ApplicationController

  def index 
    @teams = Team.all 
  end
  def show 
    @team = Team.find(params[:id])
  end 

  def new 
    
  end

  def create
    redirect_to "/teams/#{@team['id']}"
  end

  def update 
    @team = Unirest.patch("#{ENV['DOMAIN']}/teams/#{params['id']}.json", :headers => {"Accept" => "application/json"}, :parameters => {:creature => params[:creature], :name => params[:name], :state => params[:state], :sport => params[:sport]}).body  
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to "/teams"  
  end
end

