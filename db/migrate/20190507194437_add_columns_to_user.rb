class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :nome, :string
      add_column :users, :email, :string
      add_column :users, :instituto, :string
      add_column :users, :curso, :string
      add_column :users, :info, :string
      add_column :users, :link_site, :string
      add_column :users, :link_fb, :string
      add_column :users, :link_tt, :string
  end
end
