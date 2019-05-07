Pod::Spec.new do |s|

    s.name          = 'ViewModels'
    s.summary       = '[ViewModel] level types according to MVVMSE.'
    s.version       = '0.0.1'
    s.homepage      = 'https://XCEssentials.github.io/ViewModels'

    s.source        = { :git => 'https://github.com/XCEssentials/ViewModels.git', :tag => s.version }

    s.requires_arc  = true

    s.license       = { :type => 'Proprietary', :file => 'LICENSE' }

    s.authors = {
        'Maxim Khatskevich' => 'maxim@khatskevi.ch'
    } # authors

    s.swift_version = '4.2'

    s.cocoapods_version = '>= 1.5.3'

    # === ios

    s.ios.deployment_target = '9.0'

    s.dependency 'XCEPipeline'
    s.dependency 'XCEArrayExt'

    s.dependency 'Models'
    s.source_files = 'Sources/ViewModels/**/*'

    s.test_spec 'ViewModelsTests' do |ss|

        ss.requires_app_host = false
        ss.source_files = 'Tests/ViewModelsTests/**/*'

    end # test_spec 'ViewModelsTests'

end # spec s
