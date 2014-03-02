class BarcodeAssetsController < ApplicationController
  before_action :set_barcode_asset, only: [:show, :edit, :update, :destroy]

  # GET /barcode_assets
  # GET /barcode_assets.json
  def index
    @barcode_assets = BarcodeAsset.all
  end

  # GET /barcode_assets/1
  # GET /barcode_assets/1.json
  def show
  end

  # GET /barcode_assets/new
  def new
    @barcode_asset = BarcodeAsset.new
  end

  # GET /barcode_assets/1/edit
  def edit
  end

  # POST /barcode_assets
  # POST /barcode_assets.json
  def create
    @barcode_asset = BarcodeAsset.new(barcode_asset_params)

    respond_to do |format|
      if @barcode_asset.save
        format.html { redirect_to @barcode_asset, notice: 'Barcode asset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barcode_asset }
      else
        format.html { render action: 'new' }
        format.json { render json: @barcode_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barcode_assets/1
  # PATCH/PUT /barcode_assets/1.json
  def update
    respond_to do |format|
      if @barcode_asset.update(barcode_asset_params)
        format.html { redirect_to @barcode_asset, notice: 'Barcode asset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barcode_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barcode_assets/1
  # DELETE /barcode_assets/1.json
  def destroy
    @barcode_asset.destroy
    respond_to do |format|
      format.html { redirect_to barcode_assets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barcode_asset
      @barcode_asset = BarcodeAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barcode_asset_params
      params.require(:barcode_asset).permit(:barcodenum, :asset_id, :updatedon, :assigned_by_custodian)
    end
end
