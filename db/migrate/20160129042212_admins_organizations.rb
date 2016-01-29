class AdminsOrganizations < ActiveRecord::Migration[5.0]
  def change
      create_table :admins_organizations, id: false do |t|
          t.belongs_to :admin, index: true
          t.belongs_to :organization, index: true
      end
      add_index :admins_organizations, [:admin_id, :organization_id], unique: true
  end
end
