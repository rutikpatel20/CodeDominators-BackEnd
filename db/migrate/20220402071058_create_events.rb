class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :organizer_name
      t.date :start_date
      t.date :end_date
      t.integer :mobile_no
      t.string :city
      t.integer :total_stall
      t.string :stall_type
      t.string :event_poster
      t.string :floor_plan
      t.string :visit_count
      t.string :description_of_event
      t.boolean :terms_condition
      t.string :venue
      t.string :time
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
