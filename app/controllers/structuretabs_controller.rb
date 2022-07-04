class StructuretabsController < ApplicationController
  before_action :set_structuretab, only: %i[ show edit update destroy ]

  # GET /structuretabs or /structuretabs.json
  def index
    @structuretabs = Structuretab.all
  end

  # GET /structuretabs/1 or /structuretabs/1.json
  def show
  end

  # GET /structuretabs/new
  def new
    @structuretab = Structuretab.new
  end

  # GET /structuretabs/1/edit
  def edit
  end

  # POST /structuretabs or /structuretabs.json
  def create
    @structuretab = Structuretab.new(structuretab_params)

    respond_to do |format|
      if @structuretab.save
        format.html { redirect_to structuretab_url(@structuretab), notice: "Structuretab was successfully created." }
        format.json { render :show, status: :created, location: @structuretab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @structuretab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /structuretabs/1 or /structuretabs/1.json
  def update
    respond_to do |format|
      if @structuretab.update(structuretab_params)
        format.html { redirect_to structuretab_url(@structuretab), notice: "Structuretab was successfully updated." }
        format.json { render :show, status: :ok, location: @structuretab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @structuretab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structuretabs/1 or /structuretabs/1.json
  def destroy
    @structuretab.destroy

    respond_to do |format|
      format.html { redirect_to structuretabs_url, notice: "Structuretab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_structuretab
      @structuretab = Structuretab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def structuretab_params
      params.require(:structuretab).permit(:descriptionch, :siglech, :signatairetab_id)
    end
end
