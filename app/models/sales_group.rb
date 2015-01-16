class SalesGroup < ActiveRecord::Base
  acts_as_tenant
  has_and_belongs_to_many :members
end
