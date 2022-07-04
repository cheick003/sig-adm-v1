class ArrivetabsController < ApplicationController
  before_action :set_arrivetab, only: %i[ show edit update destroy ]

  # GET /arrivetabs or /arrivetabs.json
  def index
    @arrivetabs = Arrivetab.all
  end

  # GET /arrivetabs/1 or /arrivetabs/1.json
  def show
  end

  # GET /arrivetabs/new
  def new
    @arrivetab = Arrivetab.new
  end

  # GET /arrivetabs/1/edit
  def edit
  end

  # POST /arrivetabs or /arrivetabs.json
  def create
    @arrivetab = Arrivetab.new(arrivetab_params)

    respond_to do |format|
      if @arrivetab.save
        format.html { redirect_to arrivetab_url(@arrivetab), notice: "Arrivetab was successfully created." }
        format.json { render :show, status: :created, location: @arrivetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @arrivetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arrivetabs/1 or /arrivetabs/1.json
  def update
    respond_to do |format|
      if @arrivetab.update(arrivetab_params)
        format.html { redirect_to arrivetab_url(@arrivetab), notice: "Arrivetab was successfully updated." }
        format.json { render :show, status: :ok, location: @arrivetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @arrivetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrivetabs/1 or /arrivetabs/1.json
  def destroy
    @arrivetab.destroy

    respond_to do |format|
      format.html { redirect_to arrivetabs_url, notice: "Arrivetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrivetab
      @arrivetab = Arrivetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arrivetab_params
      params.require(:arrivetab).permit(:anneech, :datesch, :numeroech, :attributtab_id, :referencech, :objetch, :correspondantch, :adressech, :supporttab_id, :tch, :cch)
    end
end
