class SupporttabsController < ApplicationController
  before_action :set_supporttab, only: %i[ show edit update destroy ]

  # GET /supporttabs or /supporttabs.json
  def index
    @supporttabs = Supporttab.all
  end

  # GET /supporttabs/1 or /supporttabs/1.json
  def show
  end

  # GET /supporttabs/new
  def new
    @supporttab = Supporttab.new
  end

  # GET /supporttabs/1/edit
  def edit
  end

  # POST /supporttabs or /supporttabs.json
  def create
    @supporttab = Supporttab.new(supporttab_params)

    respond_to do |format|
      if @supporttab.save
        format.html { redirect_to supporttab_url(@supporttab), notice: "Supporttab was successfully created." }
        format.json { render :show, status: :created, location: @supporttab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @supporttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supporttabs/1 or /supporttabs/1.json
  def update
    respond_to do |format|
      if @supporttab.update(supporttab_params)
        format.html { redirect_to supporttab_url(@supporttab), notice: "Supporttab was successfully updated." }
        format.json { render :show, status: :ok, location: @supporttab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @supporttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supporttabs/1 or /supporttabs/1.json
  def destroy
    @supporttab.destroy

    respond_to do |format|
      format.html { redirect_to supporttabs_url, notice: "Supporttab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supporttab
      @supporttab = Supporttab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supporttab_params
      params.require(:supporttab).permit(:descriptionch, :siglech)
    end
end
