class DeparttabsController < ApplicationController
  before_action :set_departtab, only: %i[ show edit update destroy ]

  # GET /departtabs or /departtabs.json
  def index
    @departtabs = Departtab.all
  end

  # GET /departtabs/1 or /departtabs/1.json
  def show
  end

  # GET /departtabs/new
  def new
    @departtab = Departtab.new
  end

  # GET /departtabs/1/edit
  def edit
  end

  # POST /departtabs or /departtabs.json
  def create
    @departtab = Departtab.new(departtab_params)

    respond_to do |format|
      if @departtab.save
        format.html { redirect_to departtab_url(@departtab), notice: "Departtab was successfully created." }
        format.json { render :show, status: :created, location: @departtab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @departtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departtabs/1 or /departtabs/1.json
  def update
    respond_to do |format|
      if @departtab.update(departtab_params)
        format.html { redirect_to departtab_url(@departtab), notice: "Departtab was successfully updated." }
        format.json { render :show, status: :ok, location: @departtab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @departtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departtabs/1 or /departtabs/1.json
  def destroy
    @departtab.destroy

    respond_to do |format|
      format.html { redirect_to departtabs_url, notice: "Departtab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departtab
      @departtab = Departtab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departtab_params
      params.require(:departtab).permit(:anneech, :datesch, :numeroech, :arrivetab_id, :referencech, :objetch, :redacteurtab_id, :servicetab_id, :attributtab_id, :correspondantch, :adressech, :supporttab_id, :tch, :cch)
    end
end
