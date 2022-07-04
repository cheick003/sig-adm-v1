class EmployetabsController < ApplicationController
  before_action :set_employetab, only: %i[ show edit update destroy ]

  # GET /employetabs or /employetabs.json
  def index
    @employetabs = Employetab.all
  end

  # GET /employetabs/1 or /employetabs/1.json
  def show
  end

  # GET /employetabs/new
  def new
    @employetab = Employetab.new
  end

  # GET /employetabs/1/edit
  def edit
  end

  # POST /employetabs or /employetabs.json
  def create
    @employetab = Employetab.new(employetab_params)

    respond_to do |format|
      if @employetab.save
        format.html { redirect_to employetab_url(@employetab), notice: "Employetab was successfully created." }
        format.json { render :show, status: :created, location: @employetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employetabs/1 or /employetabs/1.json
  def update
    respond_to do |format|
      if @employetab.update(employetab_params)
        format.html { redirect_to employetab_url(@employetab), notice: "Employetab was successfully updated." }
        format.json { render :show, status: :ok, location: @employetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employetabs/1 or /employetabs/1.json
  def destroy
    @employetab.destroy

    respond_to do |format|
      format.html { redirect_to employetabs_url, notice: "Employetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employetab
      @employetab = Employetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employetab_params
      params.require(:employetab).permit(:numeromclech, :prenomch, :nomch, :genretab_id, :datench, :etatciviltab_id, :telephonech, :adressech, :statuttab_id, :cadretab_id, :corpstab_id, :structuretab_id, :servicetab_id, :banquetab_id, :rch, :cch)
    end
end
