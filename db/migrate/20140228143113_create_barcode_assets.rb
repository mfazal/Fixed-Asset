class CreateBarcodeAssets < ActiveRecord::Migration
  def change
    create_table :barcode_assets do |t|
      t.string :barcodenum
      t.integer :asset_id
      t.date :updatedon
      t.integer :assigned_by_custodian

      t.timestamps
    end
  end
end
