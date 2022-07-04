class TypemouvementtabsController < ApplicationController
  before_action :set_typemouvementtab, only: %i[ show edit update destroy ]

  # GET /typemouvementtabs or /typemouvementtabs.json
  def index
    @typemouvementtabs = Typemouvementtab.all
  end

  # GET /typemouvementtabs/1 or /typemouvementtabs/1.json
  def show
  end

  # GET /typemouvementtabs/new
  def new
    @typemouvementtab = Typemouvementtab.new
  end

  # GET /typemouvementtabs/1/edit
  def edit
  end

  # POST /typemouvementtabs or /typemouvementtabs.json
  def create
    @typemouvementtab = Typemouvementtab.new(typemouvementtab_params)

    respond_to do |format|
      if @typemouvementtab.save
        format.html { redirect_to typemouvementtab_url(@typemouvementtab), notice: "Typemouvementtab was successfully created." }
        format.json { render :show, status: :created, location: @typemouvementtab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @typemouvementtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typemouvementtabs/1 or /typemouvementtabs/1.json
  def update
    respond_to do |format|
      if @typemouvementtab.update(typemouvementtab_params)
        format.html { redirect_to typemouvementtab_url(@typemouvementtab), notice: "Typemouvementtab was successfully updated." }
        format.json { render :show, status: :ok, location: @typemouvementtab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @typemouvementtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typemouvementtabs/1 or /typemouvementtabs/1.json
  def destroy
    @typemouvementtab.destroy

    respond_to do |format|
      format.html { redirect_to typemouvementtabs_url, notice: "Typemouvementtab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typemouvementtab
      @typemouvementtab = Typemouvementtab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def typemouvementtab_params
      params.require(:typemouvementtab).permit(:descriptionch)
    end
end
