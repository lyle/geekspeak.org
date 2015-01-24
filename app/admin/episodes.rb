ActiveAdmin.register Episode do

  menu false

  form :html => { :enctype => "multipart/form-data" } do |f|
     f.inputs "Details" do
       f.input :title
       f.input :airdate
       f.input :abstract
     end
     f.input :lock_version, :as => :hidden
     f.inputs "Status" do
       f.select :status, I18n.t(:status_list).map { |key, value| [ value, key ] }
     end
     
     f.inputs "Thumbnail" do
       f.input :teaser, :as => :file,
        :hint => (f.template.image_tag(f.object.teaser.url(:thumb)) if f.object.teaser?)
     end
     f.has_many :participants do |p|
         p.input :user
         p.input :role, :collection=>Participant::ROLES
         p.input :_destroy, :as => :boolean, :label => "delete"
         #participant.role
     end
    #f.has_many :bits do |b|
    #    b.input :title, :label => "Bit Title"
    #    b.input :url, :label => "Bit URL"
    #    b.input :body, :label => "Bit Body"
    #    #b.input :user, :label => "Who's Bit is This?"
    #    b.input :user, :collection => User.all, :include_blank => false
    #    b.input :_destroy, :as => :boolean, :label => "delete this bit when you update this episode"
    #end
    f.inputs "Content" do
        f.input :content
    end
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
     column :bits do |episode|
       episode.bits.length
     end
     default_actions
  end
  
  show do
     h1 episode.title 
     h2 "#{episode.showdate_as_url} : #{episode.status}"
      
     span "owner #{episode.owner.display_name}" if episode.user_id?
     
    panel "Abstract" do   
       div image_tag episode.teaser.url(:smaller) if episode.teaser?
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
    panel "Bits" do
        table_for episode.bits, {:id=>'bits'} do
         column "Title" do |bit|
           link_to bit.title, bit_path(bit)
         end
       end
     end
     panel "Content" do
        div textilize("#{episode.content}").html_safe 
     end
     
    active_admin_comments
  end
  
  
  controller do
    helper :episodes
    def new
      @resource = Episode.new
      @resource.airdate ||= Date.today
    end
    def update
      @resource = Episode.find(params[:id])
      if @resource.update_with_conflict_validation(params[:episode])
        
      #update! do |format|
        redirect_to episode_url(@resource)
        #else
        #format.html { redirect_to edit_admin_episode_url(@episode)}
      else 
        
        redirect_to edit_admin_episode_url(@resource)
      end
    end

  end
  


  
  
end
