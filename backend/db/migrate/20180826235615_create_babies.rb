class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.string :name
      t.string :sex
      t.date :birth_day
      t.references :mother, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
