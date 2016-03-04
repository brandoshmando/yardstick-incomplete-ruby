class CreateSubject < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
        t.belongs_to :organization, index: true
        t.belongs_to :user, index: true
        t.string :unique_id, index: true, unique: true
        t.timestamps null: false
    end
    add_index :subjects, [:organization_id, :user_id], unique: true
  end
end
