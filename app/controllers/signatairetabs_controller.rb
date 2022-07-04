class SignatairetabsController < ApplicationController
  before_action :set_signatairetab, only: %i[ show edit update destroy ]

  # GET /signatairetabs or /signatairetabs.json
  def index
    @signatairetabs = Signatairetab.all
  end

  # GET /signatairetabs/1 or /signatairetabs/1.json
  def show
  end

  # GET /signatairetabs/new
  def new
    @signatairetab = Signatairetab.new
  end

  # GET /signatairetabs/1/edit
  def edit
  end

  # POST /signatairetabs or /signatairetabs.json
  def create
    @signatairetab = Signatairetab.new(signatairetab_params)

    respond_to do |format|
      if @signatairetab.save
        format.html { redirect_to signatairetab_url(@signatairetab), notice: "Signatairetab was successfully created." }
        format.json { render :show, status: :created, location: @signatairetab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @signatairetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signatairetabs/1 or /signatairetabs/1.json
  def update
    respond_to do |format|
      if @signatairetab.update(signatairetab_params)
        format.html { redirect_to signatairetab_url(@signatairetab), notice: "Signatairetab was successfully updated." }
        format.json { render :show, status: :ok, location: @signatairetab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @signatairetab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signatairetabs/1 or /signatairetabs/1.json
  def destroy
    @signatairetab.destroy

    respond_to do |format|
      format.html { redirect_to signatairetabs_url, notice: "Signatairetab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signatairetab
      @signatairetab = Signatairetab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def signatairetab_params
      params.require(:signatairetab).permit(:recteurtitrech, :recteurprenomch, :recteurnomch, :recteurcorpsch, :recteurdistinctionch, :doyentitrech, :doyenprenomch, :doyennomch, :doyencorpsch, :doyendistinctionch, :chefservicefinancetitrech, :chefservicefinanceprenomch, :chefservicefinancenomch, :chefservicefinancecorpsch, :chefservicefinancedistinctionch, :agentcomptabletitre_ch, :agentcomptableprenom_ch, :agentcomptablenom_ch, :agentcomptablecorps_ch, :agentcomptabledistinction_ch, :controlefinanciertitrech, :controlefinancierprenomch, :controlefinanciernomch, :controlefinanciercorpsch, :controlefinancierdistinctionch)
    end
end
