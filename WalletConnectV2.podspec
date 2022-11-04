#
# Be sure to run `pod lib lint WalletConnectV2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'WalletConnectV2'
  spec.version          = '1.0.0'
  spec.summary          = 'WalletConnectV2 Pod Support'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  spec.description      = 'Swift implementation of WalletConnect v.2 protocol for native iOS applications.'

  spec.homepage         = 'https://github.com/smallerboy/WalletConnectV2'

  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'david zhang,' => 'zmao008@gmail.com' }
  spec.source           = { :git => 'https://github.com/smallerboy/WalletConnectV2.git', :tag => spec.version.to_s }


  spec.ios.deployment_target = '13.0'

  spec.swift_versions = '5.3'

  # spec.pod_target_xcconfig = {
  #   'OTHER_SWIFT_FLAGS' => '-DCocoaPods'
  # }

  #s.source_files = 'WalletConnectV2/Classes/**/*'

  #spec.default_subspecs = 'walletConnect'

  # spec.subspec 'walletConnect' do |ss|
  #   ss.source_files = 'Sources/WalletConnectNetworking/**/*'
  #   ss.dependency 'WalletConnectV2/WalletConnectPairing'
  # end

  spec.subspec 'Auth' do |ss|
    ss.source_files = 'WalletConnectV2/Auth/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectPairing'
    ss.dependency "WalletConnectWeb3", "1.0.1"
  end

  spec.subspec 'WalletConnectChat' do |ss|
    ss.source_files = 'WalletConnectV2/Chat/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectNetworking'
  end

  spec.subspec 'WalletConnectSign' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectSign/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectPairing'
  end

  spec.subspec 'WalletConnectPush' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectPush/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectPairing'
  end

  spec.subspec 'WalletConnectPairing' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectPairing/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectNetworking'
  end

  spec.subspec 'WalletConnectRouter' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectRouter/**/*'
    ss.platform = :ios
  end

  spec.subspec 'WalletConnectNetworking' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectNetworking/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectRelay'
  end

  spec.subspec 'WalletConnectRelay' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectRelay/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectKMS'
  end

  spec.subspec 'WalletConnectKMS' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectKMS/**/*'
    ss.dependency 'WalletConnectV2/WalletConnectUtils'
  end

  spec.subspec 'WalletConnectUtils' do |ss|
    ss.source_files = 'WalletConnectV2/WalletConnectUtils/**/*'
    ss.dependency 'WalletConnectV2/JSONRPC'
  end

  spec.subspec 'Commons' do |ss|
    ss.source_files = 'WalletConnectV2/Commons/**/*'
  end

  spec.subspec 'JSONRPC' do |ss|
    ss.source_files = 'WalletConnectV2/JSONRPC/**/*'
    ss.dependency 'WalletConnectV2/Commons'
  end


end
