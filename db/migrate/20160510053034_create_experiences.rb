class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :name
      t.integer :coach_id

      t.timestamps null: false
    end
    add_index :experiences, :coach_id

  end
end
