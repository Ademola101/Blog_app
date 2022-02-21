module ApplicationHelper

  def markdown(text)
    options = [hard_wrap: true, auto_link: true, fenced_code_blocks: true]
    Markdown.new(text, *options).to_html.html_safe
  end
end
