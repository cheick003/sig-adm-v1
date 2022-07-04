class FiletabsController < ApplicationController
  before_action :set_filetab, only: %i[ show edit update destroy ]

  # GET /filetabs or /filetabs.json
  def index
    @filetabs = Filetab.all
  end

  # GET /filetabs/1 or /filetabs/1.json
  def show
  end

  # GET /filetabs/new
  def new
    @filetab = Filetab.new
  end

  # GET /filetabs/1/edit
  def edit
  end

  # POST /filetabs or /filetabs.json
  def create
    @filetab = Filetab.new(filetab_params)

    respond_to do |format|
      if @filetab.save
        format.html { redirect_to filetab_url(@filetab), notice: "Filetab was successfully created." }
        format.json { render :show, status: :created, location: @filetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @filetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filetabs/1 or /filetabs/1.json
  def update
    respond_to do |format|
      if @filetab.update(filetab_params)
        format.html { redirect_to filetab_url(@filetab), notice: "Filetab was successfully updated." }
        format.json { render :show, status: :ok, location: @filetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @filetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filetabs/1 or /filetabs/1.json
  def destroy
    @filetab.destroy

    respond_to do |format|
      format.html { redirect_to filetabs_url, notice: "Filetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filetab
      @filetab = Filetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def filetab_params
      params.require(:filetab).permit(:anneech, :datesch, :dossiertab_id, :descriptionch, :pdfch, :cch)
    end
end
