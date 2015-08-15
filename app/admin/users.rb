ActiveAdmin.register User do
  index do
      column :login
      column :display_name
      column :email
      column :admin do |user|
         link_to user.admin ? '&#x2714;'.html_safe : '&#x2717;'.html_safe,  toggle_admin_admin_user_path(user)
      end
      column :active do |user|
         link_to user.active ? '&#x2714;'.html_safe : '&#x2717;'.html_safe,  toggle_active_admin_user_path(user)
      end
      column :current_sign_in_at
      column :sign_in_count
      default_actions
  end
  
  member_action :toggle_active, :method => :get do
    user = User.find(params[:id])
    user.active = ! user.active
    user.save
    redirect_to admin_users_path, :notice => user.active ? "#{user.name} is now active!": "#{user.name} is no longer active."
  end
  member_action :toggle_admin, :method => :get do
    user = User.find(params[:id])
    user.admin = ! user.admin
    user.save
    redirect_to admin_users_path, :notice => user.admin ? "#{user.name} is now an admin!": "#{user.name} is no longer an admin."
  end
  
  filter :active , :as => :check_boxes
  filter :email
  filter :login
  filter :display_name
  filter :admin
  
  
  controller do

  end
  show do 
    h1 user.login
    h2 user.display_name
    div do
      "Email: " + user.email 
    end
    
    if (user.active)
      div "Active"
    end
    if (user.admin)
        div "Admin"
    end
    active_admin_comments  
  end
  form do |f|
    f.inputs "Details" do
      f.input :login
      f.input :display_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      
      f.input :admin
      f.input :active
      f.input :bio, label: "Biography (textile support)"
    end
    f.buttons
  end
end
