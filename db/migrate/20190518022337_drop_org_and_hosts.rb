class DropOrgAndHosts < ActiveRecord::Migration[5.2]
  def change
    drop_table :hosts
    drop_table :orgs
  end
end
