class RemoveCol < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :time, :stall_type
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
    add_column :events, :zip_code, :integer 
  end
end
