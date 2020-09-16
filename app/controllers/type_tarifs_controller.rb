class TypeTarifsController < ApplicationController
  before_action :set_type_tarif, only: [:show, :edit, :update, :destroy]

  # GET /type_tarifs
  # GET /type_tarifs.json
  def index
    @type_tarifs = TypeTarif.all
  end

  # GET /type_tarifs/1
  # GET /type_tarifs/1.json
  def show
  end

  # GET /type_tarifs/new
  def new
    @type_tarif = TypeTarif.new
  end

  # GET /type_tarifs/1/edit
  def edit
  end

  # POST /type_tarifs
  # POST /type_tarifs.json
  def create
    @type_tarif = TypeTarif.new(type_tarif_params)

    respond_to do |format|
      if @type_tarif.save
        format.html { redirect_to @type_tarif, notice: 'Type tarif was successfully created.' }
        format.json { render :show, status: :created, location: @type_tarif }
      else
        format.html { render :new }
        format.json { render json: @type_tarif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_tarifs/1
  # PATCH/PUT /type_tarifs/1.json
  def update
    respond_to do |format|
      if @type_tarif.update(type_tarif_params)
        format.html { redirect_to @type_tarif, notice: 'Type tarif was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_tarif }
      else
        format.html { render :edit }
        format.json { render json: @type_tarif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_tarifs/1
  # DELETE /type_tarifs/1.json
  def destroy
    @type_tarif.destroy
    respond_to do |format|
      format.html { redirect_to type_tarifs_url, notice: 'Type tarif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_tarif
      @type_tarif = TypeTarif.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_tarif_params
      params.require(:type_tarif).permit(:titre)
    end
end
