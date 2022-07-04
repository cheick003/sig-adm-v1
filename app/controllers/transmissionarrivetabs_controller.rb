class TransmissionarrivetabsController < ApplicationController
  before_action :set_transmissionarrivetab, only: %i[ show edit update destroy ]

  # GET /transmissionarrivetabs or /transmissionarrivetabs.json
  def index
    @transmissionarrivetabs = Transmissionarrivetab.all
  end

  # GET /transmissionarrivetabs/1 or /transmissionarrivetabs/1.json
  def show
  end

  # GET /transmissionarrivetabs/new
  def new
    @transmissionarrivetab = Transmissionarrivetab.new
  end

  # GET /transmissionarrivetabs/1/edit
  def edit
  end

  # POST /transmissionarrivetabs or /transmissionarrivetabs.json
  def create
    @transmissionarrivetab = Transmissionarrivetab.new(transmissionarrivetab_params)

    respond_to do |format|
      if @transmissionarrivetab.save
        format.html { redirect_to transmissionarrivetab_url(@transmissionarrivetab), notice: "Transmissionarrivetab was successfully created." }
        format.json { render :show, status: :created, location: @transmissionarrivetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transmissionarrivetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmissionarrivetabs/1 or /transmissionarrivetabs/1.json
  def update
    respond_to do |format|
      if @transmissionarrivetab.update(transmissionarrivetab_params)
        format.html { redirect_to transmissionarrivetab_url(@transmissionarrivetab), notice: "Transmissionarrivetab was successfully updated." }
        format.json { render :show, status: :ok, location: @transmissionarrivetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transmissionarrivetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmissionarrivetabs/1 or /transmissionarrivetabs/1.json
  def destroy
    @transmissionarrivetab.destroy

    respond_to do |format|
      format.html { redirect_to transmissionarrivetabs_url, notice: "Transmissionarrivetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmissionarrivetab
      @transmissionarrivetab = Transmissionarrivetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transmissionarrivetab_params
      params.require(:transmissionarrivetab).permit(:anneech, :datesch, :numeroech, :arrivetab_id, :expediteurtab_id, :destinateurtab_id, :notech, :tch, :daterch, :rch, :cch)
    end
end
