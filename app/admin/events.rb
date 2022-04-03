ActiveAdmin.register Event do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :event_name, :organizer_name, :start_date, :end_date, :mobile_no, :city, :total_stall, :event_poster, :floor_plan, :visit_count, :description_of_event, :terms_condition, :venue, :email, :start_time, :end_time, :zip_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:event_name, :organizer_name, :start_date, :end_date, :mobile_no, :city, :total_stall, :event_poster, :floor_plan, :visit_count, :description_of_event, :terms_condition, :venue, :email, :start_time, :end_time, :zip_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    id_column
    column :event_name
    column :organizer_name
    column :start_date
    column :end_date
    column :city
    column :total_stall
    column :description_of_event
    column :venue
    column :email
    actions
  end
end
