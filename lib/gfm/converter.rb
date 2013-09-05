module GFM
  class Converter
    def initialize(input_file_name)
      @input_file_name = input_file_name
    end

    def write_output_file(filename = nil)
      File.open(sanitized_output_file_name(filename), 'w').write(html_content)
    end

    private

      def sanitized_output_file_name(filename = nil)
        if filename.present?
          filename.end_with?('.html') ? filename : filename + '.html'
        else
          @input_file_name.gsub('md', 'html')
        end
      end


      def html_content
        %Q{
          <html>
            <head>
              <title>#{@input_file_name}</title>
              #{GFM.stylesheet_tags}
            </head>
            <body>
              <div id='readme' style='width:914px;margin:20px auto'>
                <article class='markdown-body'>
                  #{parse_markdown}
                </article>
              </div>
            </body>
          </html>
        }
      end

      def parse_markdown
        GFM.pipeline.call(File.new(@input_file_name).read)[:output].to_s
      end
  end
end
