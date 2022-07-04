class MouvementtabsController < ApplicationController
  before_action :set_mouvementtab, only: %i[ show edit update destroy ]

  # GET /mouvementtabs or /mouvementtabs.json
  def index
    @mouvementtabs = Mouvementtab.all
  end

  # GET /mouvementtabs/1 or /mouvementtabs/1.json
  def show
  end

  # GET /mouvementtabs/new
  def new
    @mouvementtab = Mouvementtab.new
  end

  # GET /mouvementtabs/1/edit
  def edit
  end

  # POST /mouvementtabs or /mouvementtabs.json
  def create
    @mouvementtab = Mouvementtab.new(mouvementtab_params)

    respond_to do |format|
      if @mouvementtab.save
        format.html { redirect_to mouvementtab_url(@mouvementtab), notice: "Mouvementtab was successfully created." }
        format.json { render :show, status: :created, location: @mouvementtab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mouvementtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mouvementtabs/1 or /mouvementtabs/1.json
  def update
    respond_to do |format|
      if @mouvementtab.update(mouvementtab_params)
        format.html { redirect_to mouvementtab_url(@mouvementtab), notice: "Mouvementtab was successfully updated." }
        format.json { render :show, status: :ok, location: @mouvementtab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mouvementtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mouvementtabs/1 or /mouvementtabs/1.json
  def destroy
    @mouvementtab.destroy

    respond_to do |format|
      format.html { redirect_to mouvementtabs_url, notice: "Mouvementtab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mouvementtab
      @mouvementtab = Mouvementtab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mouvementtab_params
      params.require(:mouvementtab).permit(:date, :materieltab_id, :typemouvementtab_id, :quantite, :description)
    end
end
