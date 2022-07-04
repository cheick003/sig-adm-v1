class StatuttabsController < ApplicationController
  before_action :set_statuttab, only: %i[ show edit update destroy ]

  # GET /statuttabs or /statuttabs.json
  def index
    @statuttabs = Statuttab.all
  end

  # GET /statuttabs/1 or /statuttabs/1.json
  def show
  end

  # GET /statuttabs/new
  def new
    @statuttab = Statuttab.new
  end

  # GET /statuttabs/1/edit
  def edit
  end

  # POST /statuttabs or /statuttabs.json
  def create
    @statuttab = Statuttab.new(statuttab_params)

    respond_to do |format|
      if @statuttab.save
        format.html { redirect_to statuttab_url(@statuttab), notice: "Statuttab was successfully created." }
        format.json { render :show, status: :created, location: @statuttab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @statuttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statuttabs/1 or /statuttabs/1.json
  def update
    respond_to do |format|
      if @statuttab.update(statuttab_params)
        format.html { redirect_to statuttab_url(@statuttab), notice: "Statuttab was successfully updated." }
        format.json { render :show, status: :ok, location: @statuttab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @statuttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuttabs/1 or /statuttabs/1.json
  def destroy
    @statuttab.destroy

    respond_to do |format|
      format.html { redirect_to statuttabs_url, notice: "Statuttab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statuttab
      @statuttab = Statuttab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def statuttab_params
      params.require(:statuttab).permit(:descriptionch, :siglech)
    end
end
