class EtatcontenuhstabsController < ApplicationController
  before_action :set_etatcontenuhstab, only: %i[ show edit update destroy ]

  # GET /etatcontenuhstabs or /etatcontenuhstabs.json
  def index
    @etatcontenuhstabs = Etatcontenuhstab.all
  end

  # GET /etatcontenuhstabs/1 or /etatcontenuhstabs/1.json
  def show
  end

  # GET /etatcontenuhstabs/new
  def new
    @etatcontenuhstab = Etatcontenuhstab.new
  end

  # GET /etatcontenuhstabs/1/edit
  def edit
  end

  # POST /etatcontenuhstabs or /etatcontenuhstabs.json
  def create
    @etatcontenuhstab = Etatcontenuhstab.new(etatcontenuhstab_params)

    respond_to do |format|
      if @etatcontenuhstab.save
        format.html { redirect_to etatcontenuhstab_url(@etatcontenuhstab), notice: "Etatcontenuhstab was successfully created." }
        format.json { render :show, status: :created, location: @etatcontenuhstab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @etatcontenuhstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etatcontenuhstabs/1 or /etatcontenuhstabs/1.json
  def update
    respond_to do |format|
      if @etatcontenuhstab.update(etatcontenuhstab_params)
        format.html { redirect_to etatcontenuhstab_url(@etatcontenuhstab), notice: "Etatcontenuhstab was successfully updated." }
        format.json { render :show, status: :ok, location: @etatcontenuhstab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @etatcontenuhstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etatcontenuhstabs/1 or /etatcontenuhstabs/1.json
  def destroy
    @etatcontenuhstab.destroy

    respond_to do |format|
      format.html { redirect_to etatcontenuhstabs_url, notice: "Etatcontenuhstab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etatcontenuhstab
      @etatcontenuhstab = Etatcontenuhstab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etatcontenuhstab_params
      params.require(:etatcontenuhstab).permit(:anneech, :datesch, :numerooch, :autorisationpaiementhstab_id, :etatpaiementhstab_id, :employetab_id, :volumeheurech, :tauxhorairehstab_id, :montantch, :comptebanquetab_id, :banquetab_id, :structuretab_id, :datevch, :vch, :cch)
    end
end
