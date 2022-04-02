class RemoveFromEvent < ActiveRecord::Migration[7.0]
  def change
    remove_columns :events, :stall_type, :password
    change_column :events, :start_time, :time
    change_column :events, :end_time, :time
  end
end
