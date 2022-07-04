class DossiertabsController < ApplicationController
  before_action :set_dossiertab, only: %i[ show edit update destroy ]

  # GET /dossiertabs or /dossiertabs.json
  def index
    @dossiertabs = Dossiertab.all
  end

  # GET /dossiertabs/1 or /dossiertabs/1.json
  def show
  end

  # GET /dossiertabs/new
  def new
    @dossiertab = Dossiertab.new
  end

  # GET /dossiertabs/1/edit
  def edit
  end

  # POST /dossiertabs or /dossiertabs.json
  def create
    @dossiertab = Dossiertab.new(dossiertab_params)

    respond_to do |format|
      if @dossiertab.save
        format.html { redirect_to dossiertab_url(@dossiertab), notice: "Dossiertab was successfully created." }
        format.json { render :show, status: :created, location: @dossiertab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dossiertab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dossiertabs/1 or /dossiertabs/1.json
  def update
    respond_to do |format|
      if @dossiertab.update(dossiertab_params)
        format.html { redirect_to dossiertab_url(@dossiertab), notice: "Dossiertab was successfully updated." }
        format.json { render :show, status: :ok, location: @dossiertab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dossiertab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dossiertabs/1 or /dossiertabs/1.json
  def destroy
    @dossiertab.destroy

    respond_to do |format|
      format.html { redirect_to dossiertabs_url, notice: "Dossiertab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dossiertab
      @dossiertab = Dossiertab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dossiertab_params
      params.require(:dossiertab).permit(:anneech, :datesch, :referencech, :objetch, :cch)
    end
end
