def full_title(page_title)
    base_title = 'Swimming with mmofish'
    if page_title.empty?
      base_title
    else  
      "#{base_title} | #{page_title}"
    end
  end