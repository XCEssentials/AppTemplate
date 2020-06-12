[![GitHub Tag](https://img.shields.io/github/tag/XCEssentials/AppTemplate.svg?longCache=true)](https://github.com/XCEssentials/AppTemplate/tags)
[![Written in Swift](https://img.shields.io/badge/Swift-5.2-orange.svg?longCache=true)](https://swift.org)

# AppTemplate

The greates app idea ever



## Setup

- We keep main project file maintained manually (initially created with Xcode). We do not autogenerate it in any way.
- We keep project version (string) in the `Project.spec` which is a subset of `Podspec` file used for frameworks in [CocoaPods](https://cocoapods.org/) project, so it's supposed to be a valid Ruby statement. This is the source of truth for current project version. Note, that the version should be follwoing "'SemVer" standard, and to match with App Store requirements should strictly follow "MAJOR.MINOR.PATCH" format. Also note, that we DO NOT update it manually.
- We use [GitFlow](https://nvie.com/posts/a-successful-git-branching-model/) for branching and managing releases.
- To bump current app version, we have to create a release branch with corresponding version string as name of the branch, and then run the `beforeRelease` lane defined in [Fastfile](fastlane/Fastfile) with [Fastlane](https://fastlane.tools/), which will autodetect the release version number and update the value in `Project.spec` file, as well as version numbers in main project file and all submodule `*.podspec` files. This version bump results with a dedicated commit, so this action results with a clean working copy. This only needs to be done once on each release branch.
- NOTE, that we keep version number of the project overall synchronized with version numbers of the submodules (using the Fastlane lane mentioned above). It's a little technicality, that's not very important, but good to know, you don't need to worry about maintaining these versions manually.
- After a fresh checkout, to make sure the project is ready to be built and run, execute `reconfigureProject` lane from [Fastfile](fastlane/Fastfile); it will install and integrate dependencies, sort the main project file, add/reset necessary build phases and settings.

