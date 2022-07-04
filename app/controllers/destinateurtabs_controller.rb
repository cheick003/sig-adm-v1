class DestinateurtabsController < ApplicationController
  before_action :set_destinateurtab, only: %i[ show edit update destroy ]

  # GET /destinateurtabs or /destinateurtabs.json
  def index
    @destinateurtabs = Destinateurtab.all
  end

  # GET /destinateurtabs/1 or /destinateurtabs/1.json
  def show
  end

  # GET /destinateurtabs/new
  def new
    @destinateurtab = Destinateurtab.new
  end

  # GET /destinateurtabs/1/edit
  def edit
  end

  # POST /destinateurtabs or /destinateurtabs.json
  def create
    @destinateurtab = Destinateurtab.new(destinateurtab_params)

    respond_to do |format|
      if @destinateurtab.save
        format.html { redirect_to destinateurtab_url(@destinateurtab), notice: "Destinateurtab was successfully created." }
        format.json { render :show, status: :created, location: @destinateurtab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @destinateurtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinateurtabs/1 or /destinateurtabs/1.json
  def update
    respond_to do |format|
      if @destinateurtab.update(destinateurtab_params)
        format.html { redirect_to destinateurtab_url(@destinateurtab), notice: "Destinateurtab was successfully updated." }
        format.json { render :show, status: :ok, location: @destinateurtab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @destinateurtab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinateurtabs/1 or /destinateurtabs/1.json
  def destroy
    @destinateurtab.destroy

    respond_to do |format|
      format.html { redirect_to destinateurtabs_url, notice: "Destinateurtab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destinateurtab
      @destinateurtab = Destinateurtab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def destinateurtab_params
      params.require(:destinateurtab).permit(:descriptionch, :servicetab_id)
    end
end
