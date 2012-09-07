module FeedsHelper
  
  def to_text(options = {})
     text = strip_html(options[:html])
     if options[:plain] == true
       return strip_newlines(text)
     end
     text
  end
  
  def strip_html(input)
    input.dup.gsub(html_regexp, '').tap do |h|
      for entity, char in redcloth_glyphs
        h.gsub!(entity, char)
      end
    end
  end

  # Replace newlines by white space.
  def strip_newlines(input)
    input.gsub(/(\r?\n)+/," ")
  end

        # Returns a list of RedCloth conversions of special chars.
  def redcloth_glyphs
    {
      "&#8217;" => "'",
      "&#8216" => "'",
      "&lt;" => "<",
      "&gt;" => ">",
      "&#8221;" => '"',
      "&#8220;" => '"',
      "&#8230;" => "...",
      "\1&#8212;" => "--",
      " &rarr; " => "->",
      " &#8211; " => "-",
      "&#215;" => "-",
      "&#8482;" => "(TM)",
      "&#174;" => "(R)",
      "&#169;" => "(C)",
      "&amp;" => "&"
    }.freeze
  end
  def html_regexp
          /<(?:[^>"']+|"(?:\\.|[^\\"]+)*"|'(?:\\.|[^\\']+)*')*>/xm
  end
end
