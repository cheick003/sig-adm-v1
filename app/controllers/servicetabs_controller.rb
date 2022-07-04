class ServicetabsController < ApplicationController
  before_action :set_servicetab, only: %i[ show edit update destroy ]

  # GET /servicetabs or /servicetabs.json
  def index
    @servicetabs = Servicetab.all
  end

  # GET /servicetabs/1 or /servicetabs/1.json
  def show
  end

  # GET /servicetabs/new
  def new
    @servicetab = Servicetab.new
  end

  # GET /servicetabs/1/edit
  def edit
  end

  # POST /servicetabs or /servicetabs.json
  def create
    @servicetab = Servicetab.new(servicetab_params)

    respond_to do |format|
      if @servicetab.save
        format.html { redirect_to servicetab_url(@servicetab), notice: "Servicetab was successfully created." }
        format.json { render :show, status: :created, location: @servicetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @servicetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicetabs/1 or /servicetabs/1.json
  def update
    respond_to do |format|
      if @servicetab.update(servicetab_params)
        format.html { redirect_to servicetab_url(@servicetab), notice: "Servicetab was successfully updated." }
        format.json { render :show, status: :ok, location: @servicetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @servicetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicetabs/1 or /servicetabs/1.json
  def destroy
    @servicetab.destroy

    respond_to do |format|
      format.html { redirect_to servicetabs_url, notice: "Servicetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicetab
      @servicetab = Servicetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servicetab_params
      params.require(:servicetab).permit(:descriptionch, :siglech, :structuretab_id, :observationch)
    end
end
