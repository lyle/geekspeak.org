# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end
  def subtitle(the_subtitle)
    content_for(:subtitle) { h(the_subtitle.to_s) }
  end
  def description(the_description)
    content_for(:description) { h(the_description.to_s) }
  end
  def image_url(the_image_url)
    content_for(:image_url) { h(the_image_url.to_s) }
  end
  def show_title?
    @show_title
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end
end
