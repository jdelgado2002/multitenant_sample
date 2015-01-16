class CreateSalesGroupMemberJoinTable < ActiveRecord::Migration
  def change
    create_join_table :SalesGroups, :Members do |t|
      # t.index [:sales_group_id, :member_id]
      # t.index [:member_id, :sales_group_id]
    end
  end
end
