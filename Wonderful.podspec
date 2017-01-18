Pod::Spec.new do |s|
s.name = 'Wonderful'
s.version = '1.2.1'
s.license = 'MIT'
s.summary = 'Include wonderfulcolor api, marquee, colorLabel, Gradient, Separate.'
s.homepage = 'https://github.com/dsxNiubility/Wonderful'
s.authors = { '董尚先' => 'dantesx2012@gmail.com' }
s.source = { :git => 'https://github.com/dsxNiubility/Wonderful.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.source_files = 'Wonderful/*.{h,m}'

end
