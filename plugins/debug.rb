require './plugins/raw'

module Jekyll
  class DebugBlock < Liquid::Block
    @content = "It's not easy, bein' green..."
    @style = ""
    @type = ""
    
    def initialize(tag_name, params, tokens)
      if params =~ /error|err/
        @type = "error"
      else
        @type = "stdout"
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
      puts("[DEBUG] #{@content}")
      return ""
    end
    
  end
end

Liquid::Template.register_tag('debug', Jekyll::DebugBlock)