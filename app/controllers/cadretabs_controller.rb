class CadretabsController < ApplicationController
  before_action :set_cadretab, only: %i[ show edit update destroy ]

  # GET /cadretabs or /cadretabs.json
  def index
    @cadretabs = Cadretab.all
  end

  # GET /cadretabs/1 or /cadretabs/1.json
  def show
  end

  # GET /cadretabs/new
  def new
    @cadretab = Cadretab.new
  end

  # GET /cadretabs/1/edit
  def edit
  end

  # POST /cadretabs or /cadretabs.json
  def create
    @cadretab = Cadretab.new(cadretab_params)

    respond_to do |format|
      if @cadretab.save
        format.html { redirect_to cadretab_url(@cadretab), notice: "Cadretab was successfully created." }
        format.json { render :show, status: :created, location: @cadretab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cadretab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadretabs/1 or /cadretabs/1.json
  def update
    respond_to do |format|
      if @cadretab.update(cadretab_params)
        format.html { redirect_to cadretab_url(@cadretab), notice: "Cadretab was successfully updated." }
        format.json { render :show, status: :ok, location: @cadretab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cadretab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadretabs/1 or /cadretabs/1.json
  def destroy
    @cadretab.destroy

    respond_to do |format|
      format.html { redirect_to cadretabs_url, notice: "Cadretab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadretab
      @cadretab = Cadretab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cadretab_params
      params.require(:cadretab).permit(:descriptionch, :siglech)
    end
end
