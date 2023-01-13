require_relative './nativescript.rb'


platform :ios, '15.0'

target 'CoolApp' do
    use_frameworks!
    pod 'NativeScript', :git => 'https://github.com/NativeScript/ios-v8-pod.git', :branch => 'worker'
    pod 'NativeScriptUI'
end

  post_install do |installer|
    nativescript_post_install(installer)
  end
