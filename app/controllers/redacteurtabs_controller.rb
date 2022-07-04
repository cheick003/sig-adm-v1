class RedacteurtabsController < ApplicationController
  before_action :set_redacteurtab, only: %i[ show edit update destroy ]

  # GET /redacteurtabs or /redacteurtabs.json
  def index
    @redacteurtabs = Redacteurtab.all
  end

  # GET /redacteurtabs/1 or /redacteurtabs/1.json
  def show
  end

  # GET /redacteurtabs/new
  def new
    @redacteurtab = Redacteurtab.new
  end

  # GET /redacteurtabs/1/edit
  def edit
  end

  # POST /redacteurtabs or /redacteurtabs.json
  def create
    @redacteurtab = Redacteurtab.new(redacteurtab_params)

    respond_to do |format|
      if @redacteurtab.save
        format.html { redirect_to redacteurtab_url(@redacteurtab), notice: "Redacteurtab was successfully created." }
        format.json { render :show, status: :created, location: @redacteurtab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @redacteurtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redacteurtabs/1 or /redacteurtabs/1.json
  def update
    respond_to do |format|
      if @redacteurtab.update(redacteurtab_params)
        format.html { redirect_to redacteurtab_url(@redacteurtab), notice: "Redacteurtab was successfully updated." }
        format.json { render :show, status: :ok, location: @redacteurtab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @redacteurtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redacteurtabs/1 or /redacteurtabs/1.json
  def destroy
    @redacteurtab.destroy

    respond_to do |format|
      format.html { redirect_to redacteurtabs_url, notice: "Redacteurtab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redacteurtab
      @redacteurtab = Redacteurtab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def redacteurtab_params
      params.require(:redacteurtab).permit(:descriptionch, :servicetab_id, :observationch)
    end
end
