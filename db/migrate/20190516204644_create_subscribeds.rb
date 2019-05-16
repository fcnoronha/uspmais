class CreateSubscribeds < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribeds do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
