class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :code
      t.string :fullname
      t.string :emailid
      t.string :contactnum

      t.timestamps
    end
  end
end
