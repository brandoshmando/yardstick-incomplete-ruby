class CreateToken < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
        t.belongs_to :user
        t.string :value, index: true, unique: true
        t.timestamps null: false
    end
  end
end
