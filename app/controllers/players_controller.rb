# frozen_string_literal: true

class PlayersController < ProtectedController
  before_action :set_player, only: %i[show update destroy]

  # GET /players
  def index
    @players = current_user.players.all

    render json: @players
  end

  # GET /players/1
  def show
    render json: Player.find(params[:id])
  end

  # POST /players
  def create
    @player = current_user.players.new(player_params)

    if @player.save
      render json: @player, status: :created, location: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  def destroy
    @player.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = current_user.players.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def player_params
    params.require(:player).permit(:id, :name, :score, :wins, :loses)
  end
end
