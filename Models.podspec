Pod::Spec.new do |s|

    s.name          = 'Models'
    s.summary       = '[Model] level types according to MVVMSE.'
    s.version       = '0.0.1'
    s.homepage      = 'https://XCEssentials.github.io/Models'

    s.source        = { :git => 'https://github.com/XCEssentials/Models.git', :tag => s.version }

    s.requires_arc  = true

    s.license       = { :type => 'Proprietary', :file => 'LICENSE' }

    s.authors = {
        'Maxim Khatskevich' => 'maxim@khatskevi.ch'
    } # authors

    s.swift_version = '5.2'

    s.cocoapods_version = '>= 1.7.0'

    # === ios

    s.ios.deployment_target = '13.0'

    s.dependency 'XCEPipeline'
    s.dependency 'XCEArrayExt'

    s.dependency 'Services'
    s.source_files = 'Sources/Models/**/*'

    s.test_spec 'ModelsTests' do |ss|

        ss.requires_app_host = false
        ss.source_files = 'Tests/ModelsTests/**/*'

    end # test_spec 'ModelsTests'

end # spec s
