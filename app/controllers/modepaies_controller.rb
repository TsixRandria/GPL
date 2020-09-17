class ModepaiesController < ApplicationController
  before_action :set_modepaie, only: [:show, :edit, :update, :destroy]

  # GET /modepaies
  # GET /modepaies.json
  def index
    @modepaies = Modepaie.all
  end

  # GET /modepaies/1
  # GET /modepaies/1.json
  def show
  end

  # GET /modepaies/new
  def new
    @modepaie = Modepaie.new
  end

  # GET /modepaies/1/edit
  def edit
  end

  # POST /modepaies
  # POST /modepaies.json
  def create
    @modepaie = Modepaie.new(modepaie_params)

    respond_to do |format|
      if @modepaie.save
        format.html { redirect_to @modepaie, notice: 'Modepaie was successfully created.' }
        format.json { render :show, status: :created, location: @modepaie }
      else
        format.html { render :new }
        format.json { render json: @modepaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modepaies/1
  # PATCH/PUT /modepaies/1.json
  def update
    respond_to do |format|
      if @modepaie.update(modepaie_params)
        format.html { redirect_to @modepaie, notice: 'Modepaie was successfully updated.' }
        format.json { render :show, status: :ok, location: @modepaie }
      else
        format.html { render :edit }
        format.json { render json: @modepaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modepaies/1
  # DELETE /modepaies/1.json
  def destroy
    @modepaie.destroy
    respond_to do |format|
      format.html { redirect_to modepaies_url, notice: 'Modepaie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modepaie
      @modepaie = Modepaie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def modepaie_params
      params.require(:modepaie).permit(:status, :combinaison, :prixbs, :prixms, :prixhs, :datedebut, :datefin, :tarifjour, :rubrique)
    end
end
