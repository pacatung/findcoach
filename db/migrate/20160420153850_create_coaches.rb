class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :coach_name
      t.string :gender
      t.string :email
      t.string :phone
      t.string :descrpition
      t.string :fb_email

      t.timestamps null: false
    end
  end
end
