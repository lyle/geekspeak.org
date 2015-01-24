ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
    
    section "Recent Bits" do
      table_for Bit.recent.limit(30) do
           column :geek do |bit|
             div bit.user.login
           end
           column :bit_title do |bit|
             div :class => ! bit.episodes.empty? ? 'assigned' : ""  do
               link_to( bit.title, bit_path(bit)) 
             end
           end
           column "episode?" do |bit|
              div bit.episodes.empty? ? 'X' : "Y"
           end
           column :updated_at do |bit|
             time_ago_in_words bit.updated_at
           end
      end
    end
    section "Episodes" do
      div link_to("New Episode", new_episode_path(),:class=>"button")
      div "Recent Episodes"
      table_for Episode.recent.limit(8).collect do |episode|
           column :title do |episode|
             link_to(episode.title, episode_path(episode)) 
           end
           column :airdate do |episode|
             div episode.airdate.strftime("%Y-%m-%d") 
           end
      end
    end
    section "Collect News Like a Pro", :priority => 12 do
      div
        div "Grab this 'Add GS Bit' bookmarklet and drag it to your bookmarks"
        div "Then, when visiting pages you want to use in a show, simply select text and click your new 'Add GS Bit' bookmark."
        render "admin/bits_bookmarklet"
    end

  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
