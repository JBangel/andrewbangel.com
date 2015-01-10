require 'rdiscount'

module MarkdownHandler
  def self.erb
    @erb ||= ActionView::Template.registered_template_handler(:erb)
  end

  def self.call(template)
    compiled_source = erb.call(template)
    "RDiscount.new(begin;#{compiled_source};end).to_html"
  end
end

def markdown(text)
  RDiscount.new(text).to_html.html_safe
end

ActionView::Template.register_template_handler :md, MarkdownHandler
