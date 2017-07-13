class LobbyistsController < ApplicationController

  def index
    render json: Lobbyist.all 
  end

  def show
    render json: Lobbyist.search(params[:name]).length > 0 ? Lobbyist.search(params[:name]) : "nobody found"
  end
end
