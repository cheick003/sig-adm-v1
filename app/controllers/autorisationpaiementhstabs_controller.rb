class AutorisationpaiementhstabsController < ApplicationController
  before_action :set_autorisationpaiementhstab, only: %i[ show edit update destroy ]

  # GET /autorisationpaiementhstabs or /autorisationpaiementhstabs.json
  def index
    @autorisationpaiementhstabs = Autorisationpaiementhstab.all
  end

  # GET /autorisationpaiementhstabs/1 or /autorisationpaiementhstabs/1.json
  def show
  end

  # GET /autorisationpaiementhstabs/new
  def new
    @autorisationpaiementhstab = Autorisationpaiementhstab.new
  end

  # GET /autorisationpaiementhstabs/1/edit
  def edit
  end

  # POST /autorisationpaiementhstabs or /autorisationpaiementhstabs.json
  def create
    @autorisationpaiementhstab = Autorisationpaiementhstab.new(autorisationpaiementhstab_params)

    respond_to do |format|
      if @autorisationpaiementhstab.save
        format.html { redirect_to autorisationpaiementhstab_url(@autorisationpaiementhstab), notice: "Autorisationpaiementhstab was successfully created." }
        format.json { render :show, status: :created, location: @autorisationpaiementhstab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @autorisationpaiementhstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autorisationpaiementhstabs/1 or /autorisationpaiementhstabs/1.json
  def update
    respond_to do |format|
      if @autorisationpaiementhstab.update(autorisationpaiementhstab_params)
        format.html { redirect_to autorisationpaiementhstab_url(@autorisationpaiementhstab), notice: "Autorisationpaiementhstab was successfully updated." }
        format.json { render :show, status: :ok, location: @autorisationpaiementhstab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @autorisationpaiementhstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autorisationpaiementhstabs/1 or /autorisationpaiementhstabs/1.json
  def destroy
    @autorisationpaiementhstab.destroy

    respond_to do |format|
      format.html { redirect_to autorisationpaiementhstabs_url, notice: "Autorisationpaiementhstab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autorisationpaiementhstab
      @autorisationpaiementhstab = Autorisationpaiementhstab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autorisationpaiementhstab_params
      params.require(:autorisationpaiementhstab).permit(:anneech, :datesch, :numerooch, :referencech, :descriptionch, :tauxhorairehstab_id, :structuretab_id, :datevch, :vch, :cch)
    end
end
