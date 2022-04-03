class AddDisableToStall < ActiveRecord::Migration[7.0]
  def change
    add_column :stalls, :disable, :boolean, default: false
  end
end
