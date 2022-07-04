class EtatpaiementhstabsController < ApplicationController
  before_action :set_etatpaiementhstab, only: %i[ show edit update destroy ]

  # GET /etatpaiementhstabs or /etatpaiementhstabs.json
  def index
    @etatpaiementhstabs = Etatpaiementhstab.all
  end

  # GET /etatpaiementhstabs/1 or /etatpaiementhstabs/1.json
  def show
  end

  # GET /etatpaiementhstabs/new
  def new
    @etatpaiementhstab = Etatpaiementhstab.new
  end

  # GET /etatpaiementhstabs/1/edit
  def edit
  end

  # POST /etatpaiementhstabs or /etatpaiementhstabs.json
  def create
    @etatpaiementhstab = Etatpaiementhstab.new(etatpaiementhstab_params)

    respond_to do |format|
      if @etatpaiementhstab.save
        format.html { redirect_to etatpaiementhstab_url(@etatpaiementhstab), notice: "Etatpaiementhstab was successfully created." }
        format.json { render :show, status: :created, location: @etatpaiementhstab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @etatpaiementhstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etatpaiementhstabs/1 or /etatpaiementhstabs/1.json
  def update
    respond_to do |format|
      if @etatpaiementhstab.update(etatpaiementhstab_params)
        format.html { redirect_to etatpaiementhstab_url(@etatpaiementhstab), notice: "Etatpaiementhstab was successfully updated." }
        format.json { render :show, status: :ok, location: @etatpaiementhstab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @etatpaiementhstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etatpaiementhstabs/1 or /etatpaiementhstabs/1.json
  def destroy
    @etatpaiementhstab.destroy

    respond_to do |format|
      format.html { redirect_to etatpaiementhstabs_url, notice: "Etatpaiementhstab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etatpaiementhstab
      @etatpaiementhstab = Etatpaiementhstab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etatpaiementhstab_params
      params.require(:etatpaiementhstab).permit(:anneech, :datesch, :numerooch, :autorisationpaiementhstab_id, :descriptionch, :tauxhorairehstab_id, :structuretab_id, :banquetab_id, :datesgch, :datevch, :vch, :cch)
    end
end
