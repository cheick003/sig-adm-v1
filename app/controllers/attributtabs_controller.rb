class AttributtabsController < ApplicationController
  before_action :set_attributtab, only: %i[ show edit update destroy ]

  # GET /attributtabs or /attributtabs.json
  def index
    @attributtabs = Attributtab.all
  end

  # GET /attributtabs/1 or /attributtabs/1.json
  def show
  end

  # GET /attributtabs/new
  def new
    @attributtab = Attributtab.new
  end

  # GET /attributtabs/1/edit
  def edit
  end

  # POST /attributtabs or /attributtabs.json
  def create
    @attributtab = Attributtab.new(attributtab_params)

    respond_to do |format|
      if @attributtab.save
        format.html { redirect_to attributtab_url(@attributtab), notice: "Attributtab was successfully created." }
        format.json { render :show, status: :created, location: @attributtab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attributtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attributtabs/1 or /attributtabs/1.json
  def update
    respond_to do |format|
      if @attributtab.update(attributtab_params)
        format.html { redirect_to attributtab_url(@attributtab), notice: "Attributtab was successfully updated." }
        format.json { render :show, status: :ok, location: @attributtab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attributtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attributtabs/1 or /attributtabs/1.json
  def destroy
    @attributtab.destroy

    respond_to do |format|
      format.html { redirect_to attributtabs_url, notice: "Attributtab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attributtab
      @attributtab = Attributtab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attributtab_params
      params.require(:attributtab).permit(:descriptionch, :siglech)
    end
end
