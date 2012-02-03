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
end
