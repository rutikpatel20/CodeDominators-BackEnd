ActiveAdmin.register Stall do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :stall_type, :stall_size, :stall_price, :event_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:stall_type, :stall_size, :stall_price, :event_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
