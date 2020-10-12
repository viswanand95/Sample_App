class EmployeemodelsController < ApplicationController
  layout false
  before_action :set_employeemodel, only: [:show, :edit, :update, :destroy]

  # GET /employeemodels
  # GET /employeemodels.json
  def index
    @employeemodels = Employeemodel.all
  end

  # GET /employeemodels/1
  # GET /employeemodels/1.json
  def show
  end

  # GET /employeemodels/new
  def new
    @employeemodel = Employeemodel.new
  end

  # GET /employeemodels/1/edit
  def edit
  end

  # POST /employeemodels
  # POST /employeemodels.json
  def create
    @employeemodel = Employeemodel.new(employeemodel_params)

    respond_to do |format|
      if @employeemodel.save
        format.html { redirect_to @employeemodel, notice: 'Employeemodel was successfully created.' }
        format.json { render :show, status: :created, location: @employeemodel }
      else
        format.html { render :new }
        format.json { render json: @employeemodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeemodels/1
  # PATCH/PUT /employeemodels/1.json
  def update
    respond_to do |format|
      if @employeemodel.update(employeemodel_params)
        format.html { redirect_to @employeemodel, notice: 'Employeemodel was successfully updated.' }
        format.json { render :show, status: :ok, location: @employeemodel }
      else
        format.html { render :edit }
        format.json { render json: @employeemodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeemodels/1
  # DELETE /employeemodels/1.json
  def destroy
    @employeemodel.destroy
    respond_to do |format|
      format.html { redirect_to employeemodels_url, notice: 'Employeemodel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeemodel
      @employeemodel = Employeemodel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeemodel_params
      params.require(:employeemodel).permit(:name, :age, :gender, :designation)
    end
end
