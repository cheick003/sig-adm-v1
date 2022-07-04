class MaterieltabsController < ApplicationController
  before_action :set_materieltab, only: %i[ show edit update destroy ]

  # GET /materieltabs or /materieltabs.json
  def index
    @materieltabs = Materieltab.all
  end

  # GET /materieltabs/1 or /materieltabs/1.json
  def show
  end

  # GET /materieltabs/new
  def new
    @materieltab = Materieltab.new
  end

  # GET /materieltabs/1/edit
  def edit
  end

  # POST /materieltabs or /materieltabs.json
  def create
    @materieltab = Materieltab.new(materieltab_params)

    respond_to do |format|
      if @materieltab.save
        format.html { redirect_to materieltab_url(@materieltab), notice: "Materieltab was successfully created." }
        format.json { render :show, status: :created, location: @materieltab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @materieltab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materieltabs/1 or /materieltabs/1.json
  def update
    respond_to do |format|
      if @materieltab.update(materieltab_params)
        format.html { redirect_to materieltab_url(@materieltab), notice: "Materieltab was successfully updated." }
        format.json { render :show, status: :ok, location: @materieltab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @materieltab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materieltabs/1 or /materieltabs/1.json
  def destroy
    @materieltab.destroy

    respond_to do |format|
      format.html { redirect_to materieltabs_url, notice: "Materieltab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materieltab
      @materieltab = Materieltab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def materieltab_params
      params.require(:materieltab).permit(:code, :descriptionch, :familletab_id, :description)
    end
end
