class TransmissiondeparttabsController < ApplicationController
  before_action :set_transmissiondeparttab, only: %i[ show edit update destroy ]

  # GET /transmissiondeparttabs or /transmissiondeparttabs.json
  def index
    @transmissiondeparttabs = Transmissiondeparttab.all
  end

  # GET /transmissiondeparttabs/1 or /transmissiondeparttabs/1.json
  def show
  end

  # GET /transmissiondeparttabs/new
  def new
    @transmissiondeparttab = Transmissiondeparttab.new
  end

  # GET /transmissiondeparttabs/1/edit
  def edit
  end

  # POST /transmissiondeparttabs or /transmissiondeparttabs.json
  def create
    @transmissiondeparttab = Transmissiondeparttab.new(transmissiondeparttab_params)

    respond_to do |format|
      if @transmissiondeparttab.save
        format.html { redirect_to transmissiondeparttab_url(@transmissiondeparttab), notice: "Transmissiondeparttab was successfully created." }
        format.json { render :show, status: :created, location: @transmissiondeparttab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transmissiondeparttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmissiondeparttabs/1 or /transmissiondeparttabs/1.json
  def update
    respond_to do |format|
      if @transmissiondeparttab.update(transmissiondeparttab_params)
        format.html { redirect_to transmissiondeparttab_url(@transmissiondeparttab), notice: "Transmissiondeparttab was successfully updated." }
        format.json { render :show, status: :ok, location: @transmissiondeparttab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transmissiondeparttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmissiondeparttabs/1 or /transmissiondeparttabs/1.json
  def destroy
    @transmissiondeparttab.destroy

    respond_to do |format|
      format.html { redirect_to transmissiondeparttabs_url, notice: "Transmissiondeparttab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmissiondeparttab
      @transmissiondeparttab = Transmissiondeparttab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transmissiondeparttab_params
      params.require(:transmissiondeparttab).permit(:anneech, :datesch, :numeroech, :departtab_id, :expediteurtab_id, :destinateurtab_id, :notech, :tch, :daterch, :rch, :cch)
    end
end
