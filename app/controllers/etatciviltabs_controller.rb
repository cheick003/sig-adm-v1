class EtatciviltabsController < ApplicationController
  before_action :set_etatciviltab, only: %i[ show edit update destroy ]

  # GET /etatciviltabs or /etatciviltabs.json
  def index
    @etatciviltabs = Etatciviltab.all
  end

  # GET /etatciviltabs/1 or /etatciviltabs/1.json
  def show
  end

  # GET /etatciviltabs/new
  def new
    @etatciviltab = Etatciviltab.new
  end

  # GET /etatciviltabs/1/edit
  def edit
  end

  # POST /etatciviltabs or /etatciviltabs.json
  def create
    @etatciviltab = Etatciviltab.new(etatciviltab_params)

    respond_to do |format|
      if @etatciviltab.save
        format.html { redirect_to etatciviltab_url(@etatciviltab), notice: "Etatciviltab was successfully created." }
        format.json { render :show, status: :created, location: @etatciviltab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @etatciviltab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etatciviltabs/1 or /etatciviltabs/1.json
  def update
    respond_to do |format|
      if @etatciviltab.update(etatciviltab_params)
        format.html { redirect_to etatciviltab_url(@etatciviltab), notice: "Etatciviltab was successfully updated." }
        format.json { render :show, status: :ok, location: @etatciviltab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @etatciviltab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etatciviltabs/1 or /etatciviltabs/1.json
  def destroy
    @etatciviltab.destroy

    respond_to do |format|
      format.html { redirect_to etatciviltabs_url, notice: "Etatciviltab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etatciviltab
      @etatciviltab = Etatciviltab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etatciviltab_params
      params.require(:etatciviltab).permit(:descriptionch, :siglech)
    end
end
