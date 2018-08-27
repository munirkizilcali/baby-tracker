class CreateBabyUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :baby_users do |t|
      t.references :baby, foreign_key: true
      t.references :caretaker, foreign_key: { to_table: :users }
      t.string :role
      t.boolean :active

      t.timestamps
    end
  end
end
