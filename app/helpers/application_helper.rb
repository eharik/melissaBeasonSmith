module ApplicationHelper

  def title
    base_title = "Melissa Beason-Smith, Ph.D."
    if @page_title.nil?
      base_title
    else
      "#{base_title} | #{@page_title}"
    end
  end

end

