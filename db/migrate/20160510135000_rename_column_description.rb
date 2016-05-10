class RenameColumnDescription < ActiveRecord::Migration
  def change
    rename_column :coaches, :descrpition, :description
  end
end
