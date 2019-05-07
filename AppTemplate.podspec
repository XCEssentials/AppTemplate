Pod::Spec.new do |s|

    s.name          = 'AppTemplate'
    s.summary       = 'The greates app idea ever'
    s.version       = '0.0.1'
    s.homepage      = 'https://XCEssentials.github.io/AppTemplate'

    s.source        = { :git => 'https://github.com/XCEssentials/AppTemplate.git', :tag => s.version }

    s.requires_arc  = true

    s.license       = { :type => 'Proprietary', :file => 'LICENSE' }

    s.authors = {
        'Maxim Khatskevich' => 'maxim@khatskevi.ch'
    } # authors

    s.swift_version = '4.2'

    s.cocoapods_version = '>= 1.5.3'

    # === ios

    s.ios.deployment_target = '9.0'

end # spec s
