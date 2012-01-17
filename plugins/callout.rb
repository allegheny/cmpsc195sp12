require './plugins/raw'

module Jekyll
  class CalloutBlock < Liquid::Block
    @content = "It's not easy, bein' green..."
    @style = ""
    @type = ""
    
    def initialize(tag_name, params, tokens)
      if params =~ /red|green|yellow|blue/
        @type = params
      else
        @type = nil
        @style = "-moz-border-radius:4px;-webkit-border-radius:4px;padding:5px 10px;border:1px dotted #CCCCCC;"
        # http://www.quackit.com/css/css_color_codes.cfm
        @style += "background:#{params};"
      end
      
      
      if tokens.first
        @content = tokens.first
      else
        @content = "It's not easy, bein' green..."
      end
      
      super
    end
    
    def render(context)
      super
      if @type
        source = "<p class=\"#{@type}\">"
      else
        source = "<p style=\"#{@style}\">"
      end
      source += @content
      source += "</p>"
      source
    end
    
  end
end

Liquid::Template.register_tag('callout', Jekyll::CalloutBlock)