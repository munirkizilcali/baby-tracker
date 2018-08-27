class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :baby, foreign_key: true
      t.references :caretaker, foreign_key: { to_table: :users }
      t.integer :amount_1
      t.integer :amount_2
      t.string :unit_1
      t.string :unit_2
      t.string :notes
      t.string :event_type
      t.references :event, foreign_key: true
      t.datetime :evet_time

      t.timestamps
    end
  end
end
