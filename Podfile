platform :osx, '10.13'
use_frameworks!

# Ruby version requirement
raise "Requires Ruby 2.7 or higher" if Gem::Version.new(RUBY_VERSION) < Gem::Version.new("2.7.0")

target 'Clipy' do

  # Application
  pod 'PINCache', '~> 3.0'
  pod 'Sauce'
  pod 'Sparkle', '~> 2.0'
  pod 'RealmSwift', '~> 10.0'
  pod 'RxCocoa'
  pod 'RxSwift'
  pod 'LoginServiceKit', :git => 'https://github.com/Clipy/LoginServiceKit.git'
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

    pod 'Quick'
    pod 'Nimble'

  end

  # 添加以下配置来支持 Apple Silicon
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.13'
        # Enable ARM64 architecture
        config.build_settings['EXCLUDED_ARCHS[sdk=macosx*]'] = 'arm64'
      end
    end
  end

end
