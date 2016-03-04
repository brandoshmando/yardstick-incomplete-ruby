class CreateManager < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
        t.belongs_to :organzation, index: true
        t.belongs_to :user, index: true
        t.timestamps null: false
    end
    add_index :managers, [:organzation_id, :user_id], unique: true
  end
end
