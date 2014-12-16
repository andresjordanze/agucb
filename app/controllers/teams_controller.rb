class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(params["team"])
    @team.goles = 0
    @team.p_jug = 0
    @team.p_per = 0
    @team.p_gan = 0
    @team.p_emp = 0
    @team.position = 0
    respond_to do |format|
      if @team.save
        @user = User.nuevo(params["team"]["login"],params["team"]["email"],params["team"]["password"],"f8","team")
        @team.password = Digest::MD5.hexdigest(params["team"]["password"])
        @team.save
        format.html { redirect_to @team, success: 'Equipo registrado exitosamente.' }
        format.json { render action: 'show', status: :created, location: @team }
      else
        format.html { render action: 'new' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end

  def register
    @match = Match.find(params[:id])
    @team1 = Team.find(@match.team_id_1)
    @team2 = Team.find(@match.team_id_2)
    @team1.goles = @team1.goles + @match.goals_1
    @team2.goles = @team2.goles + @match.goals_2
    if @team1.goles > @team2.goles
      @team1.p_gan = @team1.p_gan + 1
      @team2.p_per = @team2.p_per + 1
    end
    if @team2.goles > @team1.goles
      @team2.p_gan = @team2.p_gan + 1
      @team1.p_per = @team1.p_per + 1
    end
    if @team1.goles == @team2.goles
      @team1.p_emp = @team1.p_emp + 1
      @team2.p_emp = @team2.p_emp + 1
    end
    @team1.p_jug = @team1.p_jug + 1
    @team2.p_jug = @team2.p_jug + 1
    @team1.position = @team1.p_gan*3+@team1.p_emp*1
    @team2.position = @team2.p_gan*3+@team2.p_emp*1
    @team1.save
    @team2.save
    redirect_to "/positions"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :p_jug, :p_gan, :p_per, :p_emp, :goles, :tar_roj, :tar_ama, :login, :password, :delegado, :email, :phone, :position)
    end
end
