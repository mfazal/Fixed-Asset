json.array!(@barcode_assets) do |barcode_asset|
  json.extract! barcode_asset, :id, :barcodenum, :asset_id, :updatedon, :assigned_by_custodian
  json.url barcode_asset_url(barcode_asset, format: :json)
end
