class CreateCoachSportships < ActiveRecord::Migration
  def change
    create_table :coach_sportships do |t|
      t.integer :coach_id
      t.integer :sport_id
      t.timestamps null: false
    end
  end
end
