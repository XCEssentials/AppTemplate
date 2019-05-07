workspace 'AppTemplate'
install! 'cocoapods',
    :deterministic_uuids => false

target 'AppTemplateMobile' do

    project 'AppTemplate'
    platform :ios, '9.0'

    # Comment the next line if you're not using Swift
    # and don't want to use dynamic frameworks
    use_frameworks!

    pod 'MobileViews', :path => './', :testspecs => ['MobileViewsTests']
    pod 'ViewModels', :path => './', :testspecs => ['ViewModelsTests']
    pod 'Models', :path => './', :testspecs => ['ModelsTests']
    pod 'Services', :path => './', :testspecs => ['ServicesTests']
    # --- here override sources for any needed pods...
    # --- list any app-level pods like crash reporting, Reveal, etc.
    pod 'SwiftLint', :configurations => ['Debug']
    pod 'Reveal-SDK', '13', :configurations => ['Debug']
    pod 'HockeySDK', '~> 4.1.0', :subspecs => ['CrashOnlyLib']

end