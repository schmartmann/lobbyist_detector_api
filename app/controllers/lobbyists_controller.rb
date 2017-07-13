class LobbyistsController < ApplicationController

  def index
    lobbyists = Lobbyist.all
    render json: lobbyists
  end

  def show
    render json: Lobbyist.search(params[:name]).length > 0 ? Lobbyist.search(params[:name]) : "nobody found"
  end
end
