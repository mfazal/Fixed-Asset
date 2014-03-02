require 'test_helper'

class AssetsControllerTest < ActionController::TestCase
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset" do
    assert_difference('Asset.count') do
      post :create, asset: { brand_id: @asset.brand_id, category_id: @asset.category_id, custodian_id: @asset.custodian_id, description: @asset.description, employee_id: @asset.employee_id, model: @asset.model, purchase_date: @asset.purchase_date, qty: @asset.qty, serialnum: @asset.serialnum }
    end

    assert_redirected_to asset_path(assigns(:asset))
  end

  test "should show asset" do
    get :show, id: @asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asset
    assert_response :success
  end

  test "should update asset" do
    patch :update, id: @asset, asset: { brand_id: @asset.brand_id, category_id: @asset.category_id, custodian_id: @asset.custodian_id, description: @asset.description, employee_id: @asset.employee_id, model: @asset.model, purchase_date: @asset.purchase_date, qty: @asset.qty, serialnum: @asset.serialnum }
    assert_redirected_to asset_path(assigns(:asset))
  end

  test "should destroy asset" do
    assert_difference('Asset.count', -1) do
      delete :destroy, id: @asset
    end

    assert_redirected_to assets_path
  end
end
