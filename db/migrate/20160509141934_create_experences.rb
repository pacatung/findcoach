class CreateExperences < ActiveRecord::Migration
  def change
    create_table :experences do |t|
      t.string :name
      t.integer :coach_id

      t.timestamps null: false
    end

    add_index :experences, :coach_id
  end
end
