class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :baby, foreign_key: true
      t.string :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
