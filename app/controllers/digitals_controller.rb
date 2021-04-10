class DigitalsController < ApplicationController
  before_action :set_digital, only: [:show, :edit, :update, :destroy]

  # GET /digitals
  # GET /digitals.json
  def index
    @digitals = Digital.all
  end

  # GET /digitals/1
  # GET /digitals/1.json
  def show
  end

  # GET /digitals/new
  def new
    @digital = Digital.new
  end

  # GET /digitals/1/edit
  def edit
  end

  # POST /digitals
  # POST /digitals.json
  def create
    @digital = Digital.new(digital_params)

    respond_to do |format|
      if @digital.save
        format.html { redirect_to @digital, notice: 'Digital was successfully created.' }
        format.json { render :show, status: :created, location: @digital }
      else
        format.html { render :new }
        format.json { render json: @digital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /digitals/1
  # PATCH/PUT /digitals/1.json
  def update
    respond_to do |format|
      if @digital.update(digital_params)
        format.html { redirect_to @digital, notice: 'Digital was successfully updated.' }
        format.json { render :show, status: :ok, location: @digital }
      else
        format.html { render :edit }
        format.json { render json: @digital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digitals/1
  # DELETE /digitals/1.json
  def destroy
    @digital.destroy
    respond_to do |format|
      format.html { redirect_to digitals_url, notice: 'Digital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digital
      @digital = Digital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def digital_params
      params.require(:digital).permit(:product_id)
    end
end
