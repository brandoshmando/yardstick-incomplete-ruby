class OrganizationsSubjects < ActiveRecord::Migration[5.0]
  def change
      create_table :organizations_subjects, id: false do |t|
          t.belongs_to :organization, index: true
          t.belongs_to :subject, index: true
      end
      add_index :organizations_subjects, [:organization_id, :subject_id], unique: true
  end
end
