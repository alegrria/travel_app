class AustauschschulersController < ApplicationController
  before_action :set_austauschschuler, only: [:show, :edit, :update, :destroy]

  # GET /austauschschulers
  # GET /austauschschulers.json
  def index
    @austauschschulers = Austauschschuler.all
  end

  # GET /austauschschulers/1
  # GET /austauschschulers/1.json
  def show
  end

  # GET /austauschschulers/new
  def new
    @austauschschuler = Austauschschuler.new
  end

  # GET /austauschschulers/1/edit
  def edit
  end

  # POST /austauschschulers
  # POST /austauschschulers.json
  def create
    @austauschschuler = Austauschschuler.new(austauschschuler_params)
    (austauschschuler_params[:flight_ids] || []).map(&:to_i).compact.each do |x|
      @austauschschuler.flights << Flight.find(x) unless x == 0
      end

    respond_to do |format|
      if @austauschschuler.save
        format.html { redirect_to @austauschschuler, notice: 'Austauschschuler was successfully created.' }
        format.json { render :show, status: :created, location: @austauschschuler }
      else
        format.html { render :new }
        format.json { render json: @austauschschuler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /austauschschulers/1
  # PATCH/PUT /austauschschulers/1.json
  def update
    respond_to do |format|
      if @austauschschuler.update(austauschschuler_params)
        format.html { redirect_to @austauschschuler, notice: 'Austauschschuler was successfully updated.' }
        format.json { render :show, status: :ok, location: @austauschschuler }
      else
        format.html { render :edit }
        format.json { render json: @austauschschuler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /austauschschulers/1
  # DELETE /austauschschulers/1.json
  def destroy
    @austauschschuler.destroy
    respond_to do |format|
      format.html { redirect_to austauschschulers_url, notice: 'Austauschschuler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_austauschschuler
      @austauschschuler = Austauschschuler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def austauschschuler_params
      params.require(:austauschschuler).permit(:name, :family_name, :birthday, :email, :departure, :arrival, flight_ids: [] )
    end
end
