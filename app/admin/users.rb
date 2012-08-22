ActiveAdmin.register User do
  index do
      column :login
      column :display_name
      column :email
      column :current_sign_in_at
      column :last_sign_in_at
      column :sign_in_count
      default_actions
  end
  controller do

  end
  show do 
    h1 user.login
    h2 user.display_name
    active_admin_comments  
  end
  form do |f|
    f.inputs "Details" do
      f.input :login
      f.input :display_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
