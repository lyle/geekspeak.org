module ApplicationHelper
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end
  def current_path?(path)
        unless request
          raise "You cannot use helpers that need to determine the current " \
                "page unless your view context provides a Request object " \
                "in a #request method"
        end

        return false unless request.get? || request.head?

        url_string = path.gsub(/\/$/, '')
        # We ignore any extra parameters in the request_uri if the
        # submitted url doesn't have any either. This lets the function
        # work with things like ?order=asc
        request_uri = url_string.index("?") ? request.fullpath : request.path

        if url_string =~ /^\w+:\/\//
          request_uri = "#{request.protocol}#{request.host_with_port}#{request_uri}"
        end
        return request_uri == url_string
  end
  def current_path_starts_with?(path)
        unless request
          raise "You cannot use helpers that need to determine the current " \
                "page unless your view context provides a Request object " \
                "in a #request method"
        end

        return false unless request.get? || request.head?

        url_string = path.gsub(/\/$/, '')
        # We ignore any extra parameters in the request_uri if the
        # submitted url doesn't have any either. This lets the function
        # work with things like ?order=asc
        request_uri = url_string.index("?") ? request.fullpath : request.path

        if url_string =~ /^\w+:\/\//
          request_uri = "#{request.protocol}#{request.host_with_port}#{request_uri}"
        end
        return request_uri.start_with?(url_string)
  end
  def nav_link(link_text, link_path)

    if current_path?(link_path)
        class_name = 'active'
    elsif current_path_starts_with?(link_path)
        class_name = 'child'
    end
  

  content_tag(:li, :class => class_name) do
    link_to link_text, link_path
  end
end
end
