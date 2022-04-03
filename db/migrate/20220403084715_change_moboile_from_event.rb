class ChangeMoboileFromEvent < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :mobile_no, :string
  end
end
