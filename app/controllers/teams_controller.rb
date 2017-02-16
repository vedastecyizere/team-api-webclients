class TeamsController < ApplicationController

  def show 
    @team = Unirest.get("http://localhost:3000/api/v1/teams/#{params[:id]}.json").body
  end 

  def index 
    @teams = Unirest.get("http://localhost:3000/api/v1/teams.json").body

  end
end

