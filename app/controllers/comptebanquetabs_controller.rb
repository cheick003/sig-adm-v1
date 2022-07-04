class ComptebanquetabsController < ApplicationController
  before_action :set_comptebanquetab, only: %i[ show edit update destroy ]

  # GET /comptebanquetabs or /comptebanquetabs.json
  def index
    @comptebanquetabs = Comptebanquetab.all
  end

  # GET /comptebanquetabs/1 or /comptebanquetabs/1.json
  def show
  end

  # GET /comptebanquetabs/new
  def new
    @comptebanquetab = Comptebanquetab.new
  end

  # GET /comptebanquetabs/1/edit
  def edit
  end

  # POST /comptebanquetabs or /comptebanquetabs.json
  def create
    @comptebanquetab = Comptebanquetab.new(comptebanquetab_params)

    respond_to do |format|
      if @comptebanquetab.save
        format.html { redirect_to comptebanquetab_url(@comptebanquetab), notice: "Comptebanquetab was successfully created." }
        format.json { render :show, status: :created, location: @comptebanquetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comptebanquetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comptebanquetabs/1 or /comptebanquetabs/1.json
  def update
    respond_to do |format|
      if @comptebanquetab.update(comptebanquetab_params)
        format.html { redirect_to comptebanquetab_url(@comptebanquetab), notice: "Comptebanquetab was successfully updated." }
        format.json { render :show, status: :ok, location: @comptebanquetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comptebanquetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comptebanquetabs/1 or /comptebanquetabs/1.json
  def destroy
    @comptebanquetab.destroy

    respond_to do |format|
      format.html { redirect_to comptebanquetabs_url, notice: "Comptebanquetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comptebanquetab
      @comptebanquetab = Comptebanquetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comptebanquetab_params
      params.require(:comptebanquetab).permit(:banquetab_id, :codech, :numerocomptech, :ribch, :ibanbicch, :numerocomptecompletch, :employetab_id, :pch)
    end
end
