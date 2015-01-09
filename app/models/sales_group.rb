class SalesGroup < ActiveRecord::Base
  has_and_belongs_to_many :member
  acts_as_tenant
  
  add_index :SalesGroup, :tenant_id
end
