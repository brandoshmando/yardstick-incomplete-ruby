class CreateManager < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
        t.belongs_to :organization, index: true
        t.belongs_to :user, index: true
        t.timestamps null: false
    end
    add_index :managers, [:organization_id, :user_id], unique: true
  end
end
