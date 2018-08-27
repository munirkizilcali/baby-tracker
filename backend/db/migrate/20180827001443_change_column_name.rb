class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :events, :evet_time, :event_time
  end
end
