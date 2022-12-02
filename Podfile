
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '14.0'
inhibit_all_warnings!

target 'FizzBuzz' do
  pod 'SwiftGen'

  # Has its own copy of OCMock
  # and has access to GoogleAnalytics via the app
  # that hosts the test target

  target 'FizzBuzzTests' do
    inherit! :search_paths
    pod 'Sourcery'
  end
end


