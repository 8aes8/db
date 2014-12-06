class EmployeeTerritoriesController < ApplicationController
  before_action :set_employee_territory, only: [:show, :edit, :update, :destroy]

  # GET /employee_territories
  # GET /employee_territories.json
  def index
    @employee_territories = EmployeeTerritorie.all
  end

  # GET /employee_territories/1
  # GET /employee_territories/1.json
  def show
  end

  # GET /employee_territories/new
  def new
    @employee_territory = EmployeeTerritorie.new
  end

  # GET /employee_territories/1/edit
  def edit
  end

  # POST /employee_territories
  # POST /employee_territories.json
  def create
    @employee_territory = EmployeeTerritorie.new(employee_territory_params)

    respond_to do |format|
      if @employee_territory.save
        format.html { redirect_to @employee_territory, notice: 'Employee territorie was successfully created.' }
        format.json { render :show, status: :created, location: @employee_territory }
      else
        format.html { render :new }
        format.json { render json: @employee_territory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_territories/1
  # PATCH/PUT /employee_territories/1.json
  def update
    respond_to do |format|
      if @employee_territory.update(employee_territory_params)
        format.html { redirect_to @employee_territory, notice: 'Employee territorie was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_territory }
      else
        format.html { render :edit }
        format.json { render json: @employee_territory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_territories/1
  # DELETE /employee_territories/1.json
  def destroy
    @employee_territory.destroy
    respond_to do |format|
      format.html { redirect_to employee_territories_url, notice: 'Employee territorie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_territory
      @employee_territory = EmployeeTerritorie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_territory_params
      params[:employee_territory]
    end
end
