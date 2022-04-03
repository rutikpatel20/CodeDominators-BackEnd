class ChangeMobileFromBooth < ActiveRecord::Migration[7.0]
  def change
    change_column :booths, :contact, :string
  end
end
