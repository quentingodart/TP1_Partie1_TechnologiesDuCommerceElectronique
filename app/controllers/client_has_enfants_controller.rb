class ClientHasEnfantsController < ApplicationController
  before_action :set_client_has_enfant, only: [:show, :edit, :update, :destroy]

  # GET /client_has_enfants
  # GET /client_has_enfants.json
  def index
    @client_has_enfants = ClientHasEnfant.all
  end

  # GET /client_has_enfants/1
  # GET /client_has_enfants/1.json
  def show
  end

  # GET /client_has_enfants/new
  def new
    @client_has_enfant = ClientHasEnfant.new
  end

  # GET /client_has_enfants/1/edit
  def edit
  end

  # POST /client_has_enfants
  # POST /client_has_enfants.json
  def create
    @client_has_enfant = ClientHasEnfant.new(client_has_enfant_params)

    respond_to do |format|
      if @client_has_enfant.save
        format.html { redirect_to @client_has_enfant, notice: 'Client has enfant was successfully created.' }
        format.json { render :show, status: :created, location: @client_has_enfant }
      else
        format.html { render :new }
        format.json { render json: @client_has_enfant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_has_enfants/1
  # PATCH/PUT /client_has_enfants/1.json
  def update
    respond_to do |format|
      if @client_has_enfant.update(client_has_enfant_params)
        format.html { redirect_to @client_has_enfant, notice: 'Client has enfant was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_has_enfant }
      else
        format.html { render :edit }
        format.json { render json: @client_has_enfant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_has_enfants/1
  # DELETE /client_has_enfants/1.json
  def destroy
    @client_has_enfant.destroy
    respond_to do |format|
      format.html { redirect_to client_has_enfants_url, notice: 'Client has enfant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_has_enfant
      @client_has_enfant = ClientHasEnfant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_has_enfant_params
      params.require(:client_has_enfant).permit(:Enfant_id, :Client_id, :Lien)
    end
end
