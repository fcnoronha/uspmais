class AddColumnToOrg < ActiveRecord::Migration[5.2]
  def change
    add_column :orgs, :id_org, :integer
    add_column :orgs, :nome, :string
    add_column :orgs, :email, :string
    #add_column :orgs, :foto, :blob
    add_column :orgs, :instituto, :string
    add_column :orgs, :curso, :string
    add_column :orgs, :info, :string
    add_column :orgs, :link_site, :string
    add_column :orgs, :link_fb, :string
    add_column :orgs, :link_tt, :string
  end
end
