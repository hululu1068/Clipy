ruby '~> 3.1.0'

source 'https://rubygems.org'

gem 'cocoapods'
gem 'fastlane'
gem 'danger'
gem 'danger-swiftlint'
gem 'xcpretty'
gem 'xcpretty-json-formatter'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
