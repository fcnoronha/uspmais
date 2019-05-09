class CreateOrgs < ActiveRecord::Migration[5.2]
  def change
    create_table :orgs do |t|

      t.timestamps
    end
  end
end
