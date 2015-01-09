class CreateSalesGroups < ActiveRecord::Migration
  def change
    create_table :sales_groups do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
      t.references :tenant
    end
  end
end
