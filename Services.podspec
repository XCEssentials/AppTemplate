Pod::Spec.new do |s|

    s.name          = 'Services'
    s.summary       = '[Service] level types according to MVVMSE.'
    s.version       = '0.0.1'
    s.homepage      = 'https://XCEssentials.github.io/Services'

    s.source        = { :git => 'https://github.com/XCEssentials/Services.git', :tag => s.version }

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

    s.source_files = 'Sources/Services/**/*'

    s.test_spec 'ServicesTests' do |ss|

        ss.requires_app_host = false
        ss.source_files = 'Tests/ServicesTests/**/*'

    end # test_spec 'ServicesTests'

end # spec s
