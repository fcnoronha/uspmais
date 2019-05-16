class AddColumnToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :id_event, :integer
    add_column :events, :nome, :string
    add_column :events, :foto, :binary
    add_column :events, :info, :string
    add_column :events, :local, :string
    add_column :events, :date, :integer
    add_column :events, :time, :integer
  end
end
