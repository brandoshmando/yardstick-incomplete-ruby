class ArbitersOrganizations < ActiveRecord::Migration[5.0]
  def change
      create_table :arbiters_organizations, id: false do |t|
          t.belongs_to :arbiter, index: true
          t.belongs_to :organization, index: true
      end
      add_index :arbiters_organizations, [:arbiter_id, :organization_id], unique: true
  end
end
