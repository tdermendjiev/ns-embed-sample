require_relative './nativescript.rb'


platform :ios, '15.0'

target 'CoolApp' do
    use_frameworks!
    pod 'NativeScript', '8.3.4'
    pod 'NativeScriptUI'
end

  post_install do |installer|
    nativescript_post_install(installer)
  end
