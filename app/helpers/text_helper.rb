module TextHelper
  def render_markdown_as_html(markup)
    markup ||= ""
    md_renderer.render(markup).html_safe
  end

  private

  def md_renderer
    @renderer ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                          autolink: true, tables: true)
  end
end
