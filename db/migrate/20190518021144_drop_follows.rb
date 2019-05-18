class DropFollows < ActiveRecord::Migration[5.2]
  def change
     drop_table :follows
     drop_table :subscribeds
  end
end
