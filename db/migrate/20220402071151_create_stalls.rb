class CreateStalls < ActiveRecord::Migration[7.0]
  def change
    create_table :stalls do |t|
      t.string :stall_type
      t.string :stall_size
      t.decimal :stall_price

      t.timestamps
    end
  end
end
