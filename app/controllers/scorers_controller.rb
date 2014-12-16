class ScorersController < ApplicationController
  before_action :set_scorer, only: [:show, :edit, :update, :destroy]

  # GET /scorers
  # GET /scorers.json
  def index
    @scorers = Scorer.all
    @players = Player.order(goals: :desc)
  end

  # GET /scorers/1
  # GET /scorers/1.json
  def show
  end

  # GET /scorers/new
  def new
    @scorer = Scorer.new
  end

  # GET /scorers/1/edit
  def edit
  end

  # POST /scorers
  # POST /scorers.json
  def create
    @scorer = Scorer.new(scorer_params)
    @player = Player.find(@scorer.player_id)
    @player.goals = @player.goals + @scorer.goals
    @player.save
    respond_to do |format|
      if @scorer.save
        format.html { redirect_to "/matches/"+@scorer.match_id.to_s }
        #format.html { redirect_to @scorer, notice: 'Scorer was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @scorer }
      else
        format.html { render action: 'new' }
        format.json { render json: @scorer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scorers/1
  # PATCH/PUT /scorers/1.json
  def update
    respond_to do |format|
      if @scorer.update(scorer_params)
        format.html { redirect_to @scorer, notice: 'Scorer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scorer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scorers/1
  # DELETE /scorers/1.json
  def destroy
    @scorer.destroy
    respond_to do |format|
      format.html { redirect_to scorers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scorer
      @scorer = Scorer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scorer_params
      params.require(:scorer).permit(:match_id, :player_id, :team_id, :goals)
    end
end
