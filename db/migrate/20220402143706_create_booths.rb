class CreateBooths < ActiveRecord::Migration[7.0]
  def change
    create_table :booths do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :contact
      t.string :stall_id

      t.timestamps
    end
  end
end
