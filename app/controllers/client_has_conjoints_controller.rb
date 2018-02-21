class ClientHasConjointsController < ApplicationController
  before_action :set_client_has_conjoint, only: [:show, :edit, :update, :destroy]

  # GET /client_has_conjoints
  # GET /client_has_conjoints.json
  def index
    @client_has_conjoints = ClientHasConjoint.all
  end

  # GET /client_has_conjoints/1
  # GET /client_has_conjoints/1.json
  def show
  end

  # GET /client_has_conjoints/new
  def new
    @client_has_conjoint = ClientHasConjoint.new
  end

  # GET /client_has_conjoints/1/edit
  def edit
  end

  # POST /client_has_conjoints
  # POST /client_has_conjoints.json
  def create
    @client_has_conjoint = ClientHasConjoint.new(client_has_conjoint_params)

    respond_to do |format|
      if @client_has_conjoint.save
        format.html { redirect_to @client_has_conjoint, notice: 'Client has conjoint was successfully created.' }
        format.json { render :show, status: :created, location: @client_has_conjoint }
      else
        format.html { render :new }
        format.json { render json: @client_has_conjoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_has_conjoints/1
  # PATCH/PUT /client_has_conjoints/1.json
  def update
    respond_to do |format|
      if @client_has_conjoint.update(client_has_conjoint_params)
        format.html { redirect_to @client_has_conjoint, notice: 'Client has conjoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_has_conjoint }
      else
        format.html { render :edit }
        format.json { render json: @client_has_conjoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_has_conjoints/1
  # DELETE /client_has_conjoints/1.json
  def destroy
    @client_has_conjoint.destroy
    respond_to do |format|
      format.html { redirect_to client_has_conjoints_url, notice: 'Client has conjoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_has_conjoint
      @client_has_conjoint = ClientHasConjoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_has_conjoint_params
      params.require(:client_has_conjoint).permit(:Client_id, :Client_Has_Conjoint_id, :DateDebut, :DateFin)
    end
end
