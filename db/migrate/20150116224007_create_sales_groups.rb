class CreateSalesGroups < ActiveRecord::Migration
  def change
    create_table :sales_groups do |t|
      t.references :tenant, index: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :sales_groups, :tenants
  end
end
