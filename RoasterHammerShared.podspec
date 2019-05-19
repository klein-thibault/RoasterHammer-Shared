Pod::Spec.new do |s|
  s.name             = "RoasterHammerShared"
  s.version          = "0.0.27"
  s.summary          = "Shared library for the RoasterHammer application"

  s.homepage         = "https://github.com/klein-thibault/RoasterHammer-Shared"
  s.license          = 'MIT'
  s.author           = { "Thibault Klein" => "klein.thibault@gmail.com" }
  s.source           = { :git => "https://github.com/klein-thibault/RoasterHammer-Shared.git", :tag => s.version.to_s }

  s.default_subspec = 'Core'
  s.ios.deployment_target = '12.0'

  s.subspec 'Core' do |core|
    core.source_files = 'Sources/**/*'
  end
end
