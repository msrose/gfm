require 'html/pipeline'
require 'httpclient'
require 'linguist'

module GFM
  require 'gfm/converter'
  require 'gfm/version'

  HELP_TEXT = <<HELP
Usage: gfm INPUT_FILE.md [OUTPUT_FILE] [options]

  INPUT_FILE.md   The markdown file to be parsed with GitHub Flavored Markdown.

  OUTPUT_FILE     Name of the output file to be generated. If no name is given,
                  INPUT_FILE.html is used.

  --help, -h      Display this help message.

  --version, -v   Display the version number.
HELP

  def self.pipeline
    HTML::Pipeline.new [
      HTML::Pipeline::MarkdownFilter,
      HTML::Pipeline::TableOfContentsFilter,
      HTML::Pipeline::SanitizationFilter,
      HTML::Pipeline::ImageMaxWidthFilter,
      HTML::Pipeline::HttpsFilter,
      HTML::Pipeline::MentionFilter,
      HTML::Pipeline::SyntaxHighlightFilter,
      HTML::Pipeline::EmojiFilter
    ],
    http_url: 'http://github.com',
    asset_root: 'https://assets-cdn.github.com/images/icons'

  end

  def self.stylesheet_tags
    HTTPClient.new.get("https://github.com").body.split("\n").select do |line|
      line =~ /https:.*github.*\.css/
    end.join
  end
end
