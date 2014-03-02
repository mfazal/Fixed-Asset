class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :category_id
      t.integer :brand_id
      t.string :model
      t.string :serialnum
      t.text :description
      t.date :purchase_date
      t.integer :qty
      t.integer :custodian_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
