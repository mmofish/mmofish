module ApplicationHelper
  
  # Returns the full title on per-page basis
  def full_title(page_title)
    base_title = 'Swimming with mmofish'
    if page_title.empty?
      base_title
    else  
      "#{base_title} | #{page_title}"
    end
  end
  
  
  # Allows simple_form to show 'base' erros (ones not tied to a form field)
  # If we run into these, use <%#= f.error_notification %> <%#= display_base_errors resource %>
  # in a loop!

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
      <div class="alert alert-error alert-block">
        <button type="button" class="close" data-dismiss="alert">&#215;</button>
        #{messages}
      </div>
    HTML
    html.html_safe
  end
  
end