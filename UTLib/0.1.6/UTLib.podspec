#
# Be sure to run `pod lib lint UTLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "UTLib"
  s.version          = "0.1.6"
  s.summary          = "Collection of different extesions."
  s.homepage         = "https://bitbucket.org/mkareta/utlib"
  s.license          = 'MIT'
  s.author           = { "Max Kareta" => "max.kareta@gmail.com" }
  s.source           = { :git => "https://bitbucket.org/mkareta/utlib.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.subspec 'UTLib' do |sl|
    sl.source_files = 'UTLib/**/*.{h,m,c}'
    sl.public_header_files = 'UTLib/**/*.h'
  end

  s.subspec 'UTTable' do |st|
    st.source_files = 'UTTable/**/*.{h,m,c}'
    st.public_header_files = 'UTTable/**/*.h'
    st.dependency 'UTLib/UTLib'
  end

  s.frameworks = 'Foundation', 'UIKit'
end
