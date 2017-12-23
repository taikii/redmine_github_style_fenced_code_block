class GithubStyleFencedCodeBlockHookListener < Redmine::Hook::ViewListener
  include ActionView::Helpers::JavaScriptHelper

  def view_layouts_base_sidebar(context={})
    unless Setting.text_formatting == "markdown"
      return;
    end
    javascript_tag <<-"EOS"
        jsToolBar.prototype.elements.pre = {
          type: 'button',
          title: 'Preformatted text',
          fn: {
            wiki: function() { this.encloseLineSelection('```\\n', '\\n```') }
          }
        }

        // Code highlighting
        jsToolBar.prototype.elements.precode = {
          type: 'button',
          title: 'Highlighted code',
          fn: {
            wiki: function() {
              var This = this;
              this.precodeMenu(function(lang){
                This.encloseLineSelection('```' + lang + '\\n', '\\n```\\n');
              });
            }
          }
        }
        EOS
  end
end
