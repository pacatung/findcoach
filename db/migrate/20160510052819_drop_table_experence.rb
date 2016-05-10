class DropTableExperence < ActiveRecord::Migration
  def change
    drop_table :experences
  end
end
