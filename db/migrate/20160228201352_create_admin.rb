class CreateAdmin < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
        t.belongs_to :organization, index: true
        t.belongs_to :user, index: true
        t.timestamps null: false
    end
    add_index :admins, [:organization_id, :user_id], unique: true
  end
end
