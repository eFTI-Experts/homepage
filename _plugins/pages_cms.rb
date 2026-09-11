module Jekyll
  module PagesCMSFilter
    def pages_rich(input)
      markdownify(input).gsub(/\+\+(.+?)\+\+/, '<strong><u>\1</u></strong>')
    end
  end
end

Liquid::Template.register_filter(Jekyll::PagesCMSFilter)
