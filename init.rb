Redmine::Plugin.register :redmine_github_style_fenced_code_block do
  require 'github_style_fenced_code_block_hook'

  name 'Redmine GitHub style fenced code block plugin'
  author 'Taiki IKEGAME'
  description 'This plugin changes fenced code block ~~~ to ```.'
  version '1.0.0'
  url 'https://github.com/taikii/redmine_github_style_fenced_code_block_plugin'
  author_url 'https://taikii.github.io'
end
