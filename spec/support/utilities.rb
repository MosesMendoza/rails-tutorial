def full_title(page_title=nil)
  base_title = "Sample App"
  if page_title
    "#{base_title} | #{page_title}"
  else
    base_title
  end
end

