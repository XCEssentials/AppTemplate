Pod::Spec.new do |s|

    s.name          = 'MobileViews'
    s.summary       = '[View] level types according to MVVMSE.'
    s.version       = '0.0.1'
    s.homepage      = 'https://XCEssentials.github.io/MobileViews'

    s.source        = { :git => 'https://github.com/XCEssentials/MobileViews.git', :tag => s.version }

    s.requires_arc  = true

    s.license       = { :type => 'Proprietary', :file => 'LICENSE' }

    s.authors = {
        'Maxim Khatskevich' => 'maxim@khatskevi.ch'
    } # authors

    s.swift_version = '4.2'

    s.cocoapods_version = '>= 1.7.0'

    # === ios

    s.ios.deployment_target = '9.0'

    s.dependency 'XCEPipeline'
    s.dependency 'XCEArrayExt'

    s.framework = 'UIKit'
    s.dependency 'ViewModels'
    s.source_files = 'Sources/MobileViews/**/*'

    s.test_spec 'MobileViewsTests' do |ss|

        ss.requires_app_host = false
        ss.source_files = 'Tests/MobileViewsTests/**/*'

    end # test_spec 'MobileViewsTests'

end # spec s
