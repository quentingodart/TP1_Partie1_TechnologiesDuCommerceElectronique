class ClientEtatsCivilsController < ApplicationController
  before_action :set_client_etats_civil, only: [:show, :edit, :update, :destroy]

  # GET /client_etats_civils
  # GET /client_etats_civils.json
  def index
    @client_etats_civils = ClientEtatsCivil.all
  end

  # GET /client_etats_civils/1
  # GET /client_etats_civils/1.json
  def show
  end

  # GET /client_etats_civils/new
  def new
    @client_etats_civil = ClientEtatsCivil.new
  end

  # GET /client_etats_civils/1/edit
  def edit
  end

  # POST /client_etats_civils
  # POST /client_etats_civils.json
  def create
    @client_etats_civil = ClientEtatsCivil.new(client_etats_civil_params)

    respond_to do |format|
      if @client_etats_civil.save
        format.html { redirect_to @client_etats_civil, notice: 'Client etats civil was successfully created.' }
        format.json { render :show, status: :created, location: @client_etats_civil }
      else
        format.html { render :new }
        format.json { render json: @client_etats_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_etats_civils/1
  # PATCH/PUT /client_etats_civils/1.json
  def update
    respond_to do |format|
      if @client_etats_civil.update(client_etats_civil_params)
        format.html { redirect_to @client_etats_civil, notice: 'Client etats civil was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_etats_civil }
      else
        format.html { render :edit }
        format.json { render json: @client_etats_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_etats_civils/1
  # DELETE /client_etats_civils/1.json
  def destroy
    @client_etats_civil.destroy
    respond_to do |format|
      format.html { redirect_to client_etats_civils_url, notice: 'Client etats civil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_etats_civil
      @client_etats_civil = ClientEtatsCivil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_etats_civil_params
      params.require(:client_etats_civil).permit(:Client_id, :EtasCivil_id, :DateDebut, :DateFin)
    end
end
