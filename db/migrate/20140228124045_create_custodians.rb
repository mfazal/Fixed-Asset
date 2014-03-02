class CreateCustodians < ActiveRecord::Migration
  def change
    create_table :custodians do |t|
      t.integer :employee_id
      t.text :description

      t.timestamps
    end
  end
end
