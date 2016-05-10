class AddColumnStatusToCoach < ActiveRecord::Migration
  def change
    add_column :coaches, :status, :string
  end
end
