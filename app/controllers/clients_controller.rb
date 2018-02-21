class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
    #@client.build_adresse
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:Prenom, :Nom, :DateNaissance, :NAS, :Adresse_id, :NombreEnfants, :CompteTaxesProprietaire,
        enfant_attributes: [:id, :_destroy, :Nom, :Prenom, :DateNaissance],
        adresse_attributes: [:id, :_destroy, :NumeroCivique, :Rue, :CodePosatl, :Ville, :Province],
         etude_attributes: [:id, :_destroy, :SecteurEtudes, :Niveau, :DateDebut, :DateComplition, :client_id, :institution_id],
         employeur_attributes:[:id, :_destroy, :Nom, :adresse_id],
         client_has_conjoint_attributes: [:id, :_destroy, :client_id, :client_has_conjoint_id, :DateDebut, :DateFin],
         etats_civil_attributes:[:id, :_destroy, :type])
    end
end


# child_attributes: [:id, :_destroy, :firstname, :lastname, :birthdate ],
#         address_attributes: [:id, :_destroy, :number, :street, :postal_code, :city, :region, :country ],
#         study_attributes: [:id, :_destroy, :institution_id, :sector, :level, :date_start, :date_end ],
#         partner_attributes: [:id, :_destroy, :partner_id, :client_id, :date_start, :date_end],
#         job_attributes: [:id, :_destroy, :employer_id, :client_id, :date_start, :date_end],
#         civil_state_attributes: [:id, :_destroy, :title, :date_start, :date_end]
