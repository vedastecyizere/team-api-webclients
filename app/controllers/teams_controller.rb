class TeamsController < ApplicationController

  def show 
    @team = Unirest.get("#{ENV['DOMAIN']}/#{params[:id]}.json").body
  end 

  def new 
    
  end

  def create
    @team = Unirest.post("#{ENV['DOMAIN']}.json", :headers => {"Accept" => "application/json"}, :parameters => {:creature => params[:creature], :name => params[:name], :state => params[:state], :sport => params[:sport]}).body 
    redirect_to "/teams/#{@team['id']}"
  end

  def update 
    @team = Unirest.patch("#{ENV['DOMAIN']}.json", :headers => {"Accept" => "application/json"}, :parameters => {:creature => params[:creature], :name => params[:name], :state => params[:state], :sport => params[:sport]}).body
    
  end



  def index 
    @teams = Unirest.get("#{ENV['DOMAIN']}.json").body

  end
end

