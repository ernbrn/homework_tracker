module ApplicationHelper
  def markdown(descriptiontext)
    renderOptions = {hard_wrap: true, filter_html: true}
    # markdownOptions = {autolink: true, no_intra_emphasis: true}
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(renderOptions))
    markdown.render(descriptiontext).html_safe
 end
end
