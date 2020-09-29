class TarifSupplementairesController < ApplicationController
  before_action :set_tarif_supplementaire, only: [:show, :edit, :update, :destroy]

  # GET /tarif_supplementaires
  # GET /tarif_supplementaires.json
  def index
    @tarif_supplementaires = TarifSupplementaire.all
  end

  # GET /tarif_supplementaires/1
  # GET /tarif_supplementaires/1.json
  def show
  end

  # GET /tarif_supplementaires/new
  def new
    @tarif_supplementaire = TarifSupplementaire.new
  end

  # GET /tarif_supplementaires/1/edit
  def edit
  end

  # POST /tarif_supplementaires
  # POST /tarif_supplementaires.json
  def create
    @tarif_supplementaire = TarifSupplementaire.new(tarif_supplementaire_params)

    respond_to do |format|
      if @tarif_supplementaire.save
        format.html { redirect_to @tarif_supplementaire, notice: 'Tarif supplementaire was successfully created.' }
        format.json { render :show, status: :created, location: @tarif_supplementaire }
      else
        format.html { render :new }
        format.json { render json: @tarif_supplementaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarif_supplementaires/1
  # PATCH/PUT /tarif_supplementaires/1.json
  def update
    respond_to do |format|
      if @tarif_supplementaire.update(tarif_supplementaire_params)
        format.html { redirect_to @tarif_supplementaire, notice: 'Tarif supplementaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarif_supplementaire }
      else
        format.html { render :edit }
        format.json { render json: @tarif_supplementaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarif_supplementaires/1
  # DELETE /tarif_supplementaires/1.json
  def destroy
    @tarif_supplementaire.destroy
    respond_to do |format|
      format.html { redirect_to tarif_supplementaires_url, notice: 'Tarif supplementaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarif_supplementaire
      @tarif_supplementaire = TarifSupplementaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarif_supplementaire_params
      params.require(:tarif_supplementaire).permit(:libelle)
    end
end
