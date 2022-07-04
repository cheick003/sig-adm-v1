class GenretabsController < ApplicationController
  before_action :set_genretab, only: %i[ show edit update destroy ]

  # GET /genretabs or /genretabs.json
  def index
    @genretabs = Genretab.all
  end

  # GET /genretabs/1 or /genretabs/1.json
  def show
  end

  # GET /genretabs/new
  def new
    @genretab = Genretab.new
  end

  # GET /genretabs/1/edit
  def edit
  end

  # POST /genretabs or /genretabs.json
  def create
    @genretab = Genretab.new(genretab_params)

    respond_to do |format|
      if @genretab.save
        format.html { redirect_to genretab_url(@genretab), notice: "Genretab was successfully created." }
        format.json { render :show, status: :created, location: @genretab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genretab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genretabs/1 or /genretabs/1.json
  def update
    respond_to do |format|
      if @genretab.update(genretab_params)
        format.html { redirect_to genretab_url(@genretab), notice: "Genretab was successfully updated." }
        format.json { render :show, status: :ok, location: @genretab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genretab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genretabs/1 or /genretabs/1.json
  def destroy
    @genretab.destroy

    respond_to do |format|
      format.html { redirect_to genretabs_url, notice: "Genretab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genretab
      @genretab = Genretab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genretab_params
      params.require(:genretab).permit(:descriptionch, :siglech)
    end
end
