class EnviromentsController < ApplicationController
  before_action :set_enviroment, only: [:show, :edit, :update, :destroy]

  # GET /enviroments
  # GET /enviroments.json
  def index
    @enviroments = Enviroment.all
  end

  # GET /enviroments/1
  # GET /enviroments/1.json
  def show
  end

  # GET /enviroments/new
  def new
    @enviroment = Enviroment.new
  end

  # GET /enviroments/1/edit
  def edit
  end

  # POST /enviroments
  # POST /enviroments.json
  def create
    @enviroment = Enviroment.new(enviroment_params)

    respond_to do |format|
      if @enviroment.save
        format.html { redirect_to @enviroment, notice: 'Enviroment was successfully created.' }
        format.json { render :show, status: :created, location: @enviroment }
      else
        format.html { render :new }
        format.json { render json: @enviroment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enviroments/1
  # PATCH/PUT /enviroments/1.json
  def update
    respond_to do |format|
      if @enviroment.update(enviroment_params)
        format.html { redirect_to @enviroment, notice: 'Enviroment was successfully updated.' }
        format.json { render :show, status: :ok, location: @enviroment }
      else
        format.html { render :edit }
        format.json { render json: @enviroment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enviroments/1
  # DELETE /enviroments/1.json
  def destroy
    @enviroment.destroy
    respond_to do |format|
      format.html { redirect_to enviroments_url, notice: 'Enviroment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enviroment
      @enviroment = Enviroment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enviroment_params
      params.require(:enviroment).permit(:descrizione, :address, :project_id, :issue_id)
    end
end
