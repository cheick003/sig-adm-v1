class CorpstabsController < ApplicationController
  before_action :set_corpstab, only: %i[ show edit update destroy ]

  # GET /corpstabs or /corpstabs.json
  def index
    @corpstabs = Corpstab.all
  end

  # GET /corpstabs/1 or /corpstabs/1.json
  def show
  end

  # GET /corpstabs/new
  def new
    @corpstab = Corpstab.new
  end

  # GET /corpstabs/1/edit
  def edit
  end

  # POST /corpstabs or /corpstabs.json
  def create
    @corpstab = Corpstab.new(corpstab_params)

    respond_to do |format|
      if @corpstab.save
        format.html { redirect_to corpstab_url(@corpstab), notice: "Corpstab was successfully created." }
        format.json { render :show, status: :created, location: @corpstab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @corpstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corpstabs/1 or /corpstabs/1.json
  def update
    respond_to do |format|
      if @corpstab.update(corpstab_params)
        format.html { redirect_to corpstab_url(@corpstab), notice: "Corpstab was successfully updated." }
        format.json { render :show, status: :ok, location: @corpstab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @corpstab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corpstabs/1 or /corpstabs/1.json
  def destroy
    @corpstab.destroy

    respond_to do |format|
      format.html { redirect_to corpstabs_url, notice: "Corpstab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corpstab
      @corpstab = Corpstab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def corpstab_params
      params.require(:corpstab).permit(:descriptionch, :siglech)
    end
end
