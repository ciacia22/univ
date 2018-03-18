class BocconisController < ApplicationController
  before_action :set_bocconi, only: [:show, :edit, :update, :destroy]

  # GET /bocconis
  # GET /bocconis.json
  def index
    @bocconis = Bocconi.all
  end

  # GET /bocconis/1
  # GET /bocconis/1.json
  def show
  end

  # GET /bocconis/new
  def new
    @bocconi = Bocconi.new
  end

  # GET /bocconis/1/edit
  def edit
  end

  # POST /bocconis
  # POST /bocconis.json
  def create
    @bocconi = Bocconi.new(bocconi_params)

    respond_to do |format|
      if @bocconi.save
        format.html { redirect_to @bocconi, notice: 'Bocconi was successfully created.' }
        format.json { render :show, status: :created, location: @bocconi }
      else
        format.html { render :new }
        format.json { render json: @bocconi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bocconis/1
  # PATCH/PUT /bocconis/1.json
  def update
    respond_to do |format|
      if @bocconi.update(bocconi_params)
        format.html { redirect_to @bocconi, notice: 'Bocconi was successfully updated.' }
        format.json { render :show, status: :ok, location: @bocconi }
      else
        format.html { render :edit }
        format.json { render json: @bocconi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bocconis/1
  # DELETE /bocconis/1.json
  def destroy
    @bocconi.destroy
    respond_to do |format|
      format.html { redirect_to bocconis_url, notice: 'Bocconi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bocconi
      @bocconi = Bocconi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bocconi_params
      params.require(:bocconi).permit(:titolo, :description, :price, :cover)
    end
end
