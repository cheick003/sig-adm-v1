class ExpediteurtabsController < ApplicationController
  before_action :set_expediteurtab, only: %i[ show edit update destroy ]

  # GET /expediteurtabs or /expediteurtabs.json
  def index
    @expediteurtabs = Expediteurtab.all
  end

  # GET /expediteurtabs/1 or /expediteurtabs/1.json
  def show
  end

  # GET /expediteurtabs/new
  def new
    @expediteurtab = Expediteurtab.new
  end

  # GET /expediteurtabs/1/edit
  def edit
  end

  # POST /expediteurtabs or /expediteurtabs.json
  def create
    @expediteurtab = Expediteurtab.new(expediteurtab_params)

    respond_to do |format|
      if @expediteurtab.save
        format.html { redirect_to expediteurtab_url(@expediteurtab), notice: "Expediteurtab was successfully created." }
        format.json { render :show, status: :created, location: @expediteurtab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expediteurtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expediteurtabs/1 or /expediteurtabs/1.json
  def update
    respond_to do |format|
      if @expediteurtab.update(expediteurtab_params)
        format.html { redirect_to expediteurtab_url(@expediteurtab), notice: "Expediteurtab was successfully updated." }
        format.json { render :show, status: :ok, location: @expediteurtab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @expediteurtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expediteurtabs/1 or /expediteurtabs/1.json
  def destroy
    @expediteurtab.destroy

    respond_to do |format|
      format.html { redirect_to expediteurtabs_url, notice: "Expediteurtab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expediteurtab
      @expediteurtab = Expediteurtab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expediteurtab_params
      params.require(:expediteurtab).permit(:descriptionch, :servicetab_id)
    end
end
