module ApplicationHelper

# When writing ordinary Ruby, you often write modules and include them
# explicitly yourself, but in the case of a helper module Rails handles the
# inclusion for us. The result is that the full_title method is automagically
# available in all our views.
  
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end