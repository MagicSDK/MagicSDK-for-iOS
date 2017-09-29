Pod::Spec.new do |s|
  s.name                = 'TUTUMagicSDK'
  s.version             = '1.0.0'
  s.summary             = 'MagicSDK for iOS'
  s.homepage            = 'https://magic.tutucloud.com/'
  s.license             = { :type => 'Commercial', :text => '© 2014–2017 TUTUCLOUD Technology Co., Ltd.' }
  s.author              = { 'TUTUCLOUD' => 'contact@tusdk.com' }
  s.platform            = :ios, '6.0'
  s.source              = { :git => 'https://github.com/TUTUMagicSDK/MagicSDK-for-iOS.git', :tag => '1.0.0' }
  s.requires_arc        = true

  s.subspec 'GPUImage' do |g|
    g.dependency            'GPUImage', '~> 0.1.7'
  end

  s.subspec 'Core' do |c|
    c.vendored_frameworks = 'TUTUMagic.framework'
  end

  s.subspec 'ImageGeeV1' do |i|
    i.vendored_frameworks = 'TUTUMagicGeeV1.framework'
    i.resources           = 'Localization/*.lproj'
  end

end
