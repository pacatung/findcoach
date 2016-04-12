class CreatePreusers < ActiveRecord::Migration
  def change
    create_table :preusers do |t|
      t.string :preuser_email

      t.timestamps null: false
    end
  end
end
