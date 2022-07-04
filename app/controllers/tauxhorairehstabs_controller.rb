class TauxhorairehstabsController < ApplicationController
  before_action :set_tauxhorairehstab, only: %i[ show edit update destroy ]

  # GET /tauxhorairehstabs or /tauxhorairehstabs.json
  def index
    @tauxhorairehstabs = Tauxhorairehstab.all
  end

  # GET /tauxhorairehstabs/1 or /tauxhorairehstabs/1.json
  def show
  end

  # GET /tauxhorairehstabs/new
  def new
    @tauxhorairehstab = Tauxhorairehstab.new
  end

  # GET /tauxhorairehstabs/1/edit
  def edit
  end

  # POST /tauxhorairehstabs or /tauxhorairehstabs.json
  def create
    @tauxhorairehstab = Tauxhorairehstab.new(tauxhorairehstab_params)

    respond_to do |format|
      if @tauxhorairehstab.save
        format.html { redirect_to tauxhorairehstab_url(@tauxhorairehstab), notice: "Tauxhorairehstab was successfully created." }
        format.json { render :show, status: :created, location: @tauxhorairehstab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tauxhorairehstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tauxhorairehstabs/1 or /tauxhorairehstabs/1.json
  def update
    respond_to do |format|
      if @tauxhorairehstab.update(tauxhorairehstab_params)
        format.html { redirect_to tauxhorairehstab_url(@tauxhorairehstab), notice: "Tauxhorairehstab was successfully updated." }
        format.json { render :show, status: :ok, location: @tauxhorairehstab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tauxhorairehstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tauxhorairehstabs/1 or /tauxhorairehstabs/1.json
  def destroy
    @tauxhorairehstab.destroy

    respond_to do |format|
      format.html { redirect_to tauxhorairehstabs_url, notice: "Tauxhorairehstab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tauxhorairehstab
      @tauxhorairehstab = Tauxhorairehstab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tauxhorairehstab_params
      params.require(:tauxhorairehstab).permit(:tauxhorairehsch, :descriptionch, :pch)
    end
end
