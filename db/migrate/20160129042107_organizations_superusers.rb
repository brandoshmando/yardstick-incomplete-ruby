class OrganizationsSuperusers < ActiveRecord::Migration[5.0]
  def change
      create_table :organizations_superusers, id: false do |t|
          t.belongs_to :organization, index: true
          t.belongs_to :superuser, index: true
      end
      add_index :organizations_superusers, [:organization_id, :superuser_id], unique: true
  end
end
