class PiEstimatorsController < ApplicationController
  before_action :set_pi_estimator, only: [:show, :edit, :update, :destroy]

  # GET /pi_estimators
  # GET /pi_estimators.json
  def index
    @pi_estimators = PiEstimator.all
  end

  # GET /pi_estimators/1
  # GET /pi_estimators/1.json
  def show
    @coords = eval(PiEstimator.find(params[:id]).coords)
    PiEstimator.find(params[:id]).check_for_coord_length(@coords)
    @result = PiEstimator.find(params[:id]).mCarlo3D_pi(@coords)
  end

  # GET /pi_estimators/new
  def new
    @pi_estimator = PiEstimator.new
  end

  # GET /pi_estimators/1/edit
  def edit
  end

  # POST /pi_estimators
  # POST /pi_estimators.json
  def create
    @pi_estimator = PiEstimator.new(pi_estimator_params)

    respond_to do |format|
      if @pi_estimator.save
        format.html { redirect_to @pi_estimator, notice: 'Pi estimator was successfully created.' }
        format.json { render :show, status: :created, location: @pi_estimator }
      else
        format.html { render :new }
        format.json { render json: @pi_estimator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pi_estimators/1
  # PATCH/PUT /pi_estimators/1.json
  def update
    respond_to do |format|
      if @pi_estimator.update(pi_estimator_params)
        format.html { redirect_to @pi_estimator, notice: 'Pi estimator was successfully updated.' }
        format.json { render :show, status: :ok, location: @pi_estimator }
      else
        format.html { render :edit }
        format.json { render json: @pi_estimator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pi_estimators/1
  # DELETE /pi_estimators/1.json
  def destroy
    @pi_estimator.destroy
    respond_to do |format|
      format.html { redirect_to pi_estimators_url, notice: 'Pi estimator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pi_estimator
      @pi_estimator = PiEstimator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pi_estimator_params
      params.fetch(:pi_estimator, {}).permit(:coords)
    end
end
