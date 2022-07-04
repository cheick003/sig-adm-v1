class BanquetabsController < ApplicationController
  before_action :set_banquetab, only: %i[ show edit update destroy ]

  # GET /banquetabs or /banquetabs.json
  def index
    @banquetabs = Banquetab.all
  end

  # GET /banquetabs/1 or /banquetabs/1.json
  def show
  end

  # GET /banquetabs/new
  def new
    @banquetab = Banquetab.new
  end

  # GET /banquetabs/1/edit
  def edit
  end

  # POST /banquetabs or /banquetabs.json
  def create
    @banquetab = Banquetab.new(banquetab_params)

    respond_to do |format|
      if @banquetab.save
        format.html { redirect_to banquetab_url(@banquetab), notice: "Banquetab was successfully created." }
        format.json { render :show, status: :created, location: @banquetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @banquetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banquetabs/1 or /banquetabs/1.json
  def update
    respond_to do |format|
      if @banquetab.update(banquetab_params)
        format.html { redirect_to banquetab_url(@banquetab), notice: "Banquetab was successfully updated." }
        format.json { render :show, status: :ok, location: @banquetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @banquetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banquetabs/1 or /banquetabs/1.json
  def destroy
    @banquetab.destroy

    respond_to do |format|
      format.html { redirect_to banquetabs_url, notice: "Banquetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banquetab
      @banquetab = Banquetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banquetab_params
      params.require(:banquetab).permit(:codebanquech, :descriptionch, :siglech)
    end
end
