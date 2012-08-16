ActiveAdmin.register Segment do
  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Details" do
        f.input :title
        f.input :episode, :as => :select, :collection => Episode.all
        f.input :position
      end
  
      f.has_many :bits do |bit|
            bit.input :title
            bit.input :url
            bit.input :user, :as => :select, :collection => User.all
            bit.input :body
            bit.input :_destroy, :as=>:boolean, :required => false, :label=>'Remove'
            
      end

      f.buttons
   end
  show do 
    h1 "Segment: #{segment.title}"
    h2 "#{segment.episode.showdate_as_url} : #{segment.episode.title}" 
    panel "Bits" do
      table_for segment.bits do
        column :title do |bit|
          link_to bit.title, bit.url
        end
        column :body
        column :user
        column :edit do |bit|
          link_to "edit", edit_admin_bit_path(bit)
        end
      end
    end   
  end   
   
   collection_action :sort, :method => :post do
       params[:segment].each_with_index do |id, index|
         Segment.update_all(['position=?', index+1], ['id=?', id])
       end
       render :nothing => true
   end
   
end
