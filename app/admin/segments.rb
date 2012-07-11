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
   
   
   collection_action :sort, :method => :post do
       params[:segment].each_with_index do |id, index|
         Segment.update_all(['position=?', index+1], ['id=?', id])
       end
       render :nothing => true
   end
   
end
