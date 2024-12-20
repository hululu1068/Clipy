platform :osx, '11.0'
use_frameworks!

# Ruby version requirement
raise "Requires Ruby 2.7 or higher" if Gem::Version.new(RUBY_VERSION) < Gem::Version.new("2.7.0")

# CocoaPods configurations
install! 'cocoapods',
  :deterministic_uuids => false,
  :disable_input_output_paths => true

target 'Clipy' do

  # Application
  pod 'PINCache', '~> 3.0'
  pod 'Sauce'
  pod 'Sparkle', '~> 2.0'
  pod 'RealmSwift', '~> 10.0'
  pod 'RxCocoa'
  pod 'RxSwift'
  pod 'LoginServiceKit', :git => 'https://github.com/Clipy/LoginServiceKit.git', :branch => 'master'
  pod 'KeyHolder'
  pod 'Magnet'
  pod 'RxScreeen'
  pod 'AEXML'
  pod 'LetsMove'
  pod 'SwiftHEXColors'
  # Utility
  pod 'BartyCrouch'
  pod 'SwiftLint'
  pod 'SwiftGen'

  target 'ClipyTests' do
    inherit! :search_paths

    pod 'Quick', '~> 7.0'
    pod 'Nimble', '~> 12.0'

  end

  # 添加以下配置来支持 Apple Silicon
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '11.0'
        # Universal build settings
        config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        config.build_settings['ARCHS'] = 'x86_64 arm64'
        config.build_settings['VALID_ARCHS'] = 'x86_64 arm64'
        config.build_settings['ENABLE_BITCODE'] = 'NO'
        config.build_settings['DEAD_CODE_STRIPPING'] = 'YES'
        # Test framework settings
        if ['Quick', 'Nimble'].include? target.name
          config.build_settings['ENABLE_TESTING_SEARCH_PATHS'] = 'YES'
          config.build_settings['FRAMEWORK_SEARCH_PATHS'] = '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"'
        end
      end
    end
  end

end
