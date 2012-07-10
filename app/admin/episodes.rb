ActiveAdmin.register Episode do
  

  
  form :html => { :enctype => "multipart/form-data" } do |f|
     f.inputs "Details" do
       f.input :title
       f.input :airdate, :default => Date.today
       f.input :abstract
     end
     f.inputs "Status" do
       f.select :status, I18n.t(:status_list).map { |key, value| [ value, key ] }
     end
     
     f.inputs "Thumbnail" do
       f.input :teaser, :as => :file, :hint => (f.template.image_tag(f.object.teaser.url(:thumb)) if f.object.teaser?)
     end
     
   #  f.has_many :participants do |participant|
  #        participant.inputs
  #    end
       
     f.has_many :participants do |af|
         af.input :user
         af.input :role, :collection=>Participant::ROLES
         af.input :_destroy, :as => :boolean, :label => "delete"
         #participant.role
     end
    f.has_many :segments do |seg|
        seg.input :title
        seg.input :position
        seg.input :_destroy, :as => :boolean, :label => "delete"
        #participant.role
        seg.has_many :bits do |bit|
          bit.input :title
          bit.input :url
        end
    end
    #
   #  f.has_many :participants do |app_f|
   #       app_f.inputs "Participants" do
   #         app_f.input :users # it should automatically generate a drop-down select to choose from your existing patients
   #         app_f.input :participants_role
   #       end
   #     end
   #  
     
     f.buttons
  end
  
  filter :airdate
  filter :title
   
  index do
     column "Episode Date", :airdate, :sortable => :airdate do |episode|
       episode.showdate_as_url
     end
     column :title 
     column :status
     column :users do |episode|
       episode.users.length
     end
     column :segments do |episode|
       episode.segments.length
     end
     default_actions
  end
  
  show do
     h1 episode.title 
     h2 "#{episode.showdate_as_url} : #{episode.status}"
      
     span "owner #{episode.owner.display_name}" if episode.user_id?
     
    panel "Abstract" do   
       div image_tag episode.teaser.url(:dem300x600) if episode.teaser?
       div textilize(episode.abstract).html_safe
    end
     
    
    panel "Participants" do
      table_for episode.participants do
        column :role
        column "user" do |participant|
          participant.user.display_name
        end
      end
    end
    
    panel "Segments" do
        
      table_for episode.segments, {:id=>'segments'} do
        column "Title" do |segment|
          link_to segment.title, admin_segment_path(segment)
        end
        column :bits do |segment|
          segment.bits.length
        end 
      end
    end
    active_admin_comments
  end
  
  controller do
    helper :episodes
  
  end
  

  
  
end
