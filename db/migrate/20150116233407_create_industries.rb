class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.references :tenant, index: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :industries, :tenants
  end
end
