class GamesController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: "ulsc", password: "Utk1213."
  before_action :set_game, only: [:show]

  # GET /games
  def index
    @games = Game.active
  end

  # GET /games/1
  def show
    render json: @game
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

end
