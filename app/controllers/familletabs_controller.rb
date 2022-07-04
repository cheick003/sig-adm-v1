class FamilletabsController < ApplicationController
  before_action :set_familletab, only: %i[ show edit update destroy ]

  # GET /familletabs or /familletabs.json
  def index
    @familletabs = Familletab.all
  end

  # GET /familletabs/1 or /familletabs/1.json
  def show
  end

  # GET /familletabs/new
  def new
    @familletab = Familletab.new
  end

  # GET /familletabs/1/edit
  def edit
  end

  # POST /familletabs or /familletabs.json
  def create
    @familletab = Familletab.new(familletab_params)

    respond_to do |format|
      if @familletab.save
        format.html { redirect_to familletab_url(@familletab), notice: "Familletab was successfully created." }
        format.json { render :show, status: :created, location: @familletab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @familletab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /familletabs/1 or /familletabs/1.json
  def update
    respond_to do |format|
      if @familletab.update(familletab_params)
        format.html { redirect_to familletab_url(@familletab), notice: "Familletab was successfully updated." }
        format.json { render :show, status: :ok, location: @familletab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @familletab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familletabs/1 or /familletabs/1.json
  def destroy
    @familletab.destroy

    respond_to do |format|
      format.html { redirect_to familletabs_url, notice: "Familletab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_familletab
      @familletab = Familletab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def familletab_params
      params.require(:familletab).permit(:code, :famille, :description)
    end
end
