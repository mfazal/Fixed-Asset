require 'test_helper'

class BarcodeAssetsControllerTest < ActionController::TestCase
  setup do
    @barcode_asset = barcode_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barcode_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barcode_asset" do
    assert_difference('BarcodeAsset.count') do
      post :create, barcode_asset: { asset_id: @barcode_asset.asset_id, assigned_by_custodian: @barcode_asset.assigned_by_custodian, barcodenum: @barcode_asset.barcodenum, updatedon: @barcode_asset.updatedon }
    end

    assert_redirected_to barcode_asset_path(assigns(:barcode_asset))
  end

  test "should show barcode_asset" do
    get :show, id: @barcode_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barcode_asset
    assert_response :success
  end

  test "should update barcode_asset" do
    patch :update, id: @barcode_asset, barcode_asset: { asset_id: @barcode_asset.asset_id, assigned_by_custodian: @barcode_asset.assigned_by_custodian, barcodenum: @barcode_asset.barcodenum, updatedon: @barcode_asset.updatedon }
    assert_redirected_to barcode_asset_path(assigns(:barcode_asset))
  end

  test "should destroy barcode_asset" do
    assert_difference('BarcodeAsset.count', -1) do
      delete :destroy, id: @barcode_asset
    end

    assert_redirected_to barcode_assets_path
  end
end
