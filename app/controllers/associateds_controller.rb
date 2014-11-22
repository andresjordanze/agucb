class AssociatedsController < ApplicationController
  before_action :set_associated, only: [:show, :edit, :update, :destroy]

  # GET /associateds
  # GET /associateds.json
  def index
    @associateds = Associated.all
    @associated = Associated.new
  end

  # GET /associateds/1
  # GET /associateds/1.json
  def show
  end

  # GET /associateds/new
  def new
    @associated = Associated.new
  end

  # GET /associateds/1/edit
  def edit
  end

  # POST /associateds
  # POST /associateds.json
  def create
    @associated = Associated.new(associated_params)

    respond_to do |format|
      if @associated.save
        format.html { redirect_to @associated, notice: 'Associated was successfully created.' }
        format.json { render action: 'show', status: :created, location: @associated }
      else
        format.html { render action: 'new' }
        format.json { render json: @associated.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associateds/1
  # PATCH/PUT /associateds/1.json
  def update
    respond_to do |format|
      if @associated.update(associated_params)
        format.html { redirect_to @associated, notice: 'Associated was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @associated.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associateds/1
  # DELETE /associateds/1.json
  def destroy
    @associated.destroy
    respond_to do |format|
      format.html { redirect_to associateds_url }
      format.json { head :no_content }
    end
  end

  def search
    #@associateds = Associated.where("name LIKE '%?%'", "leonardo")
    @associateds = Associated.where('name LIKE ?', "%#{params[:name]}%") 
    #@associateds = buscar(params[:name])
    render 'index'
  end

  def buscar(nombre)

    if search  
      find(:all, :conditions => ['name LIKE ?', "%#{"leonardo"}%"])  
    else  
      find(:all)  
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associated
      @associated = Associated.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associated_params
      params.require(:associated).permit(:name, :lastname, :phone, :cellphone, :email, :address, :universityDegree, :universityCareer, :yearDegree)
    end
end
