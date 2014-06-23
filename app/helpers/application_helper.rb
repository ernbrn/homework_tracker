module ApplicationHelper
  def markdown(descriptiontext)
    renderOptions = {hard_wrap: true, filter_html: true}
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(renderOptions))
    markdown.render(descriptiontext).html_safe
 end
end
