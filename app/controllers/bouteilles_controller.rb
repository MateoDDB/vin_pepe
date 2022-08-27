class BouteillesController < ApplicationController
  before_action :set_bouteille, only: %i[ show edit update destroy ]

  # GET /bouteilles or /bouteilles.json
  def index
    @bouteilles = Bouteille.all
  end

  # GET /bouteilles/1 or /bouteilles/1.json
  def show
  end

  # GET /bouteilles/new
  def new
    @bouteille = Bouteille.new
  end

  # GET /bouteilles/1/edit
  def edit
  end

  # POST /bouteilles or /bouteilles.json
  def create
    @bouteille = Bouteille.new(bouteille_params)

    respond_to do |format|
      if @bouteille.save
        format.html { redirect_to @bouteille, notice: "Bouteille was successfully created." }
        format.json { render :show, status: :created, location: @bouteille }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bouteille.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bouteilles/1 or /bouteilles/1.json
  def update
    respond_to do |format|
      if @bouteille.update(bouteille_params)
        format.html { redirect_to @bouteille, notice: "Bouteille was successfully updated." }
        format.json { render :show, status: :ok, location: @bouteille }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bouteille.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bouteilles/1 or /bouteilles/1.json
  def destroy
    @bouteille.destroy
    respond_to do |format|
      format.html { redirect_to bouteilles_url, notice: "Bouteille was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bouteille
      @bouteille = Bouteille.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bouteille_params
      params.require(:bouteille).permit(:name, :year, :description, :note, :quantity)
    end
end
