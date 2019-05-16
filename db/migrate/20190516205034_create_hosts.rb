class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.references :org, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
