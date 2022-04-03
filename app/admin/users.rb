# ActiveAdmin.register User do

#    # See permitted parameters documentation:
#    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#    #
#    # Uncomment all parameters which should be permitted for assignment
#    #
#    permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :username, :role
#    #
   # or
   #
   # permit_params do
   #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :username, :role]
   #   permitted << :other if params[:action] == 'create' && current_user.admin?
   #   permitted
   # end
#    form multipart: true do |f|
#     f.inputs do
#       f.input :email
#       f.input :username
#       f.input :password
#       f.input :password_confirmation
#     end
#     f.actions
#   end
#   index do
#     id_column
#     column :email
#     column :username
#     column :role
#     actions
#   end
# end
