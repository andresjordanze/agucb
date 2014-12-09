class EnabledPlayersController < ApplicationController
  before_action :set_enabled_player, only: [:show, :edit, :update, :destroy]

  # GET /enabled_players
  # GET /enabled_players.json
  def index
    @enabled_players = EnabledPlayer.all
  end

  # GET /enabled_players/1
  # GET /enabled_players/1.json
  def show
  end

  # GET /enabled_players/new
  def new
    @enabled_player = EnabledPlayer.new
  end

  # GET /enabled_players/1/edit
  def edit
  end

  # POST /enabled_players
  # POST /enabled_players.json
  def create
    @enabled_player = EnabledPlayer.new(enabled_player_params)

    respond_to do |format|
      if @enabled_player.save
        format.html { redirect_to "/matches/"+@enabled_player.match_id.to_s }
        #format.html { redirect_to @enabled_player, notice: 'Enabled player was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @enabled_player }
      else
        format.html { render action: 'new' }
        format.json { render json: @enabled_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enabled_players/1
  # PATCH/PUT /enabled_players/1.json
  def update
    respond_to do |format|
      if @enabled_player.update(enabled_player_params)
        format.html { redirect_to @enabled_player, notice: 'Enabled player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enabled_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enabled_players/1
  # DELETE /enabled_players/1.json
  def destroy
    @enabled_player.destroy
    respond_to do |format|
      format.html { redirect_to enabled_players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enabled_player
      @enabled_player = EnabledPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enabled_player_params
      params.require(:enabled_player).permit(:match_id, :team_id, :player_id, :number)
    end
end
