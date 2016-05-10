class AddIndexCertificatesOnCoachId < ActiveRecord::Migration
  def change
    add_index :certificates, :coach_id
  end
end
