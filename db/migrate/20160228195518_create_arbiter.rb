class CreateArbiter < ActiveRecord::Migration[5.0]
  def change
    create_table :arbiters do |t|
        t.belongs_to :organization, index: true
        t.belongs_to :user, index: true
        t.timestamps null: false
    end
    add_index :arbiters, [:organization_id, :user_id], unique: true
  end
end
